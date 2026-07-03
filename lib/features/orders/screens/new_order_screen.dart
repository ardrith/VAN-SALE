import 'dart:convert';
import 'package:drift/drift.dart' hide Column;
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uuid/uuid.dart';
import '../../../core/database/app_database.dart' as db;
import '../../../providers.dart';
import '../../../shared/theme/app_theme.dart';

class NewOrderScreen extends ConsumerStatefulWidget {
  const NewOrderScreen({super.key});

  @override
  ConsumerState<NewOrderScreen> createState() => _NewOrderScreenState();
}

class _NewOrderScreenState extends ConsumerState<NewOrderScreen> {
  db.Customer? _selectedCustomer;
  String _paymentMethod = 'cash';
  String _productQuery = '';
  final _notesCtrl = TextEditingController();
  final _uuid = const Uuid();

  @override
  void dispose() {
    _notesCtrl.dispose();
    super.dispose();
  }

  Future<void> _confirmOrder() async {
    if (_selectedCustomer == null) { _showSnack('Select a customer first'); return; }
    final cart = ref.read(cartProvider);
    if (cart.isEmpty) { _showSnack('Add at least one item'); return; }

    final database = ref.read(dbProvider);
    final orderId = _uuid.v4();
    final orderNo = 'ORD-${DateTime.now().millisecondsSinceEpoch}';
    final subtotal = ref.read(cartProvider.notifier).subtotal;
    final tax = subtotal * 0.06;
    final total = subtotal + tax;

    await database.upsertOrder(db.OrdersCompanion(
      id: Value(orderId), orderNo: Value(orderNo),
      customerId: Value(_selectedCustomer!.cvCode),
      customerName: Value(_selectedCustomer!.cvName),
      subtotal: Value(subtotal), tax: Value(tax), total: Value(total),
      status: const Value('confirmed'), paymentMethod: Value(_paymentMethod),
      notes: Value(_notesCtrl.text.trim().isEmpty ? null : _notesCtrl.text),
      isSynced: const Value(false),
    ));

    final items = cart.map((i) => db.OrderItemsCompanion(
      id: Value(_uuid.v4()), orderId: Value(orderId),
      productId: Value(i.product.itemNo), productName: Value(i.product.itemName),
      price: Value(i.product.mrp), qty: Value(i.qty),
      discount: Value(i.discount), total: Value(i.total),
    )).toList();
    await database.insertOrderItems(items);

    final payload = jsonEncode({
      'id': orderId, 'order_no': orderNo,
      'customer_id': _selectedCustomer!.cvCode,
      'subtotal': subtotal, 'tax': tax, 'total': total,
      'payment_method': _paymentMethod,
      'items': cart.map((i) => {
        'product_id': i.product.itemNo, 'qty': i.qty,
        'price': i.product.mrp, 'discount': i.discount, 'total': i.total,
      }).toList(),
    });

    await database.addToSyncQueue(db.SyncQueueCompanion(
      entity: const Value('order'), entityId: Value(orderId),
      action: const Value('create'), payload: Value(payload),
    ));

    final isOnline = ref.read(isOnlineProvider);
    if (isOnline) await ref.read(syncServiceProvider).pushPendingOrders();

    ref.read(cartProvider.notifier).clear();
    ref.invalidate(ordersProvider);
    ref.invalidate(todaySalesProvider);
    ref.invalidate(todayOrderCountProvider);

    if (!mounted) return;
    setState(() {
      _selectedCustomer = null;
      _paymentMethod = 'cash';
      _productQuery = '';
      _notesCtrl.clear();
    });
    _showSnack(isOnline ? 'Order saved and synced' : 'Order saved offline', success: true);
    if (Navigator.canPop(context)) Navigator.pop(context);
  }

  void _showSnack(String message, {bool success = false}) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(message, style: GoogleFonts.bricolageGrotesque()),
      backgroundColor: success ? AppTheme.kGreen : AppTheme.kRed,
    ));
  }

  @override
  Widget build(BuildContext context) {
    final cart = ref.watch(cartProvider);
    final subtotal = ref.watch(cartProvider.notifier).subtotal;
    final tax = subtotal * 0.06;
    final total = subtotal + tax;

    return Scaffold(
      backgroundColor: AppTheme.kSurface,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView(
                padding: const EdgeInsets.fromLTRB(16, 12, 16, 18),
                children: [
                  const _PageHeader(),
                  const SizedBox(height: 14),
                  _Panel(
                    title: 'Customer',
                    icon: Icons.person_search_rounded,
                    child: _CustomerPicker(
                      selected: _selectedCustomer,
                      onSelected: (c) => setState(() => _selectedCustomer = c),
                      onClear: () => setState(() => _selectedCustomer = null),
                    ),
                  ),
                  const SizedBox(height: 12),
                  _Panel(
                    title: 'Add Items',
                    icon: Icons.add_box_rounded,
                    child: _ProductSearch(
                      query: _productQuery,
                      onChanged: (v) => setState(() => _productQuery = v),
                    ),
                  ),
                  const SizedBox(height: 12),
                  _Panel(
                    title: 'Cart',
                    icon: Icons.shopping_basket_rounded,
                    trailing: cart.isEmpty ? null : '${cart.length} lines',
                    child: cart.isEmpty
                        ? const _EmptyCart()
                        : Column(children: [for (final item in cart) _CartItemTile(item: item)]),
                  ),
                  const SizedBox(height: 12),
                  _Panel(
                    title: 'Payment',
                    icon: Icons.account_balance_wallet_rounded,
                    child: Column(
                      children: [
                        _PaymentSelector(
                          value: _paymentMethod,
                          onChanged: (v) => setState(() => _paymentMethod = v),
                        ),
                        const SizedBox(height: 12),
                        TextField(
                          controller: _notesCtrl,
                          style: GoogleFonts.bricolageGrotesque(fontSize: 14),
                          decoration: const InputDecoration(
                            hintText: 'Notes (optional)',
                            prefixIcon: Icon(Icons.notes_rounded),
                          ),
                          maxLines: 2,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            _TotalsBar(
              subtotal: subtotal, tax: tax, total: total,
              canSubmit: _selectedCustomer != null && cart.isNotEmpty,
              onConfirm: _confirmOrder,
            ),
          ],
        ),
      ),
    );
  }
}

// ── Page Header ───────────────────────────────────────────────────────────────

class _PageHeader extends StatelessWidget {
  const _PageHeader();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppTheme.kBlue,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Row(
        children: [
          const Icon(Icons.receipt_long_rounded, color: Colors.white, size: 28),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('New Order',
                    style: GoogleFonts.bricolageGrotesque(
                        color: Colors.white, fontSize: 20, fontWeight: FontWeight.w800)),
                Text('Build, review and confirm a sale',
                    style: GoogleFonts.bricolageGrotesque(
                        color: Colors.white.withValues(alpha: 0.60), fontSize: 12)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// ── Panel ─────────────────────────────────────────────────────────────────────

class _Panel extends StatelessWidget {
  final String title;
  final IconData icon;
  final String? trailing;
  final Widget child;

  const _Panel({required this.title, required this.icon, required this.child, this.trailing});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: const Color(0xFFE4E7EC)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(icon, color: AppTheme.kNavy, size: 20),
              const SizedBox(width: 8),
              Expanded(
                child: Text(title,
                    style: GoogleFonts.bricolageGrotesque(
                        color: AppTheme.kNavy, fontSize: 15, fontWeight: FontWeight.w800)),
              ),
              if (trailing != null)
                Text(trailing!,
                    style: GoogleFonts.bricolageGrotesque(
                        color: const Color(0xFF667085), fontSize: 12, fontWeight: FontWeight.w600)),
            ],
          ),
          const SizedBox(height: 12),
          child,
        ],
      ),
    );
  }
}

// ── Customer Picker ───────────────────────────────────────────────────────────

class _CustomerPicker extends ConsumerStatefulWidget {
  final db.Customer? selected;
  final ValueChanged<db.Customer> onSelected;
  final VoidCallback onClear;

  const _CustomerPicker({required this.selected, required this.onSelected, required this.onClear});

  @override
  ConsumerState<_CustomerPicker> createState() => _CustomerPickerState();
}

class _CustomerPickerState extends ConsumerState<_CustomerPicker> {
  String _query = '';

  @override
  Widget build(BuildContext context) {
    if (widget.selected != null) {
      return _SelectedCustomer(customer: widget.selected!, onClear: widget.onClear);
    }
    final customers = ref.watch(customerSearchProvider(_query));
    return Column(
      children: [
        TextField(
          style: GoogleFonts.bricolageGrotesque(fontSize: 14),
          decoration: const InputDecoration(
              hintText: 'Search customer', prefixIcon: Icon(Icons.search_rounded)),
          onChanged: (v) => setState(() => _query = v),
        ),
        const SizedBox(height: 10),
        customers.when(
          data: (list) {
            final visible = list.take(4).toList();
            if (visible.isEmpty) return const _InlineEmpty(text: 'No customers found');
            return Column(
              children: [
                for (final c in visible)
                  _PickerRow(
                    title: c.cvName, subtitle: c.cvCode,
                    icon: Icons.person_rounded, onTap: () => widget.onSelected(c),
                  ),
              ],
            );
          },
          loading: () => const LinearProgressIndicator(),
          error: (_, __) => const _InlineEmpty(text: 'Unable to load customers'),
        ),
      ],
    );
  }
}

class _SelectedCustomer extends StatelessWidget {
  final db.Customer customer;
  final VoidCallback onClear;

  const _SelectedCustomer({required this.customer, required this.onClear});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: AppTheme.kNavy.withValues(alpha: 0.06),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Container(
            width: 42, height: 42,
            decoration: BoxDecoration(color: AppTheme.kBlue, borderRadius: BorderRadius.circular(10)),
            child: Center(
              child: Text(
                customer.cvName.isNotEmpty ? customer.cvName[0].toUpperCase() : '?',
                style: GoogleFonts.bricolageGrotesque(
                    color: Colors.white, fontWeight: FontWeight.w800, fontSize: 16),
              ),
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(customer.cvName, maxLines: 1, overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.bricolageGrotesque(fontWeight: FontWeight.w800, color: AppTheme.kNavy)),
                Text(customer.cvCode, maxLines: 1, overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.bricolageGrotesque(color: const Color(0xFF667085), fontSize: 12)),
              ],
            ),
          ),
          IconButton(onPressed: onClear, icon: const Icon(Icons.close_rounded, size: 18)),
        ],
      ),
    );
  }
}

// ── Product Search ────────────────────────────────────────────────────────────

class _ProductSearch extends ConsumerWidget {
  final String query;
  final ValueChanged<String> onChanged;

  const _ProductSearch({required this.query, required this.onChanged});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final products = ref.watch(itemSearchProvider(query));
    return Column(
      children: [
        TextField(
          style: GoogleFonts.bricolageGrotesque(fontSize: 14),
          decoration: const InputDecoration(
              hintText: 'Search item or barcode', prefixIcon: Icon(Icons.search_rounded)),
          onChanged: onChanged,
        ),
        const SizedBox(height: 10),
        products.when(
          data: (list) {
            final visible = list.take(5).toList();
            if (visible.isEmpty) return const _InlineEmpty(text: 'No items found');
            return Column(
              children: [
                for (final item in visible)
                  _ProductRow(item: item, onAdd: () => ref.read(cartProvider.notifier).addProduct(item)),
              ],
            );
          },
          loading: () => const LinearProgressIndicator(),
          error: (_, __) => const _InlineEmpty(text: 'Unable to load items'),
        ),
      ],
    );
  }
}

class _ProductRow extends StatelessWidget {
  final db.ItemHeader item;
  final VoidCallback onAdd;

  const _ProductRow({required this.item, required this.onAdd});

  @override
  Widget build(BuildContext context) {
    return _PickerRow(
      title: item.itemName,
      subtitle: 'RM ${item.mrp.toStringAsFixed(2)}  ·  Stock ${item.onHand.toStringAsFixed(0)}',
      icon: Icons.inventory_2_rounded,
      trailing: IconButton.filledTonal(
          tooltip: 'Add item', onPressed: onAdd, icon: const Icon(Icons.add_rounded)),
      onTap: onAdd,
    );
  }
}

class _PickerRow extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;
  final Widget? trailing;
  final VoidCallback onTap;

  const _PickerRow({
    required this.title, required this.subtitle,
    required this.icon, required this.onTap, this.trailing,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(8),
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 7),
        child: Row(
          children: [
            Container(
              width: 36, height: 36,
              decoration: BoxDecoration(
                  color: const Color(0xFFF2F4F7), borderRadius: BorderRadius.circular(8)),
              child: Icon(icon, color: AppTheme.kBlue, size: 18),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, maxLines: 1, overflow: TextOverflow.ellipsis,
                      style: GoogleFonts.bricolageGrotesque(
                        fontWeight: FontWeight.w700, fontSize: 13, color: AppTheme.kNavy)),
                  Text(subtitle, maxLines: 1, overflow: TextOverflow.ellipsis,
                      style: GoogleFonts.bricolageGrotesque(color: AppTheme.kSlate, fontSize: 12)),
                ],
              ),
            ),
            if (trailing != null) ...[const SizedBox(width: 8), trailing!],
          ],
        ),
      ),
    );
  }
}

// ── Cart Item ─────────────────────────────────────────────────────────────────

class _CartItemTile extends ConsumerWidget {
  final CartItem item;
  const _CartItemTile({required this.item});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifier = ref.read(cartProvider.notifier);
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: const Color(0xFFF9FAFB),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: const Color(0xFFE4E7EC)),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(item.product.itemName, maxLines: 2, overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.bricolageGrotesque(
                        fontWeight: FontWeight.w700, fontSize: 13, color: AppTheme.kNavy)),
                const SizedBox(height: 2),
                Text('RM ${item.product.mrp.toStringAsFixed(2)} / ${item.product.uom ?? 'PCS'}',
                    style: GoogleFonts.bricolageGrotesque(
                        color: const Color(0xFF667085), fontSize: 11)),
              ],
            ),
          ),
          const SizedBox(width: 8),
          _QtyControl(
            qty: item.qty,
            onMinus: () => notifier.updateQty(item.product.itemNo, item.qty - 1),
            onPlus: () => notifier.updateQty(item.product.itemNo, item.qty + 1),
          ),
          const SizedBox(width: 10),
          SizedBox(
            width: 74,
            child: Text('RM ${item.total.toStringAsFixed(2)}',
                maxLines: 1, textAlign: TextAlign.end, overflow: TextOverflow.ellipsis,
                style: GoogleFonts.bricolageGrotesque(
                    color: AppTheme.kBlue, fontWeight: FontWeight.w800, fontSize: 12)), 
          ),
        ],
      ),
    );
  }
}

class _QtyControl extends StatelessWidget {
  final int qty;
  final VoidCallback onMinus;
  final VoidCallback onPlus;

  const _QtyControl({required this.qty, required this.onMinus, required this.onPlus});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 34,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: const Color(0xFFE4E7EC)),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(visualDensity: VisualDensity.compact, onPressed: onMinus,
              icon: const Icon(Icons.remove_rounded, size: 16)),
          SizedBox(
            width: 22,
            child: Text('$qty', textAlign: TextAlign.center,
                style: GoogleFonts.bricolageGrotesque(fontWeight: FontWeight.w800, fontSize: 13)),
          ),
          IconButton(visualDensity: VisualDensity.compact, onPressed: onPlus,
              icon: const Icon(Icons.add_rounded, size: 16)),
        ],
      ),
    );
  }
}

// ── Payment Selector ──────────────────────────────────────────────────────────

class _PaymentSelector extends StatelessWidget {
  final String value;
  final ValueChanged<String> onChanged;

  const _PaymentSelector({required this.value, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    const methods = [
      ('cash', Icons.payments_rounded, 'Cash'),
      ('credit', Icons.account_balance_rounded, 'Credit'),
      ('transfer', Icons.swap_horiz_rounded, 'Transfer'),
    ];
    return SegmentedButton<String>(
      style: SegmentedButton.styleFrom(
        textStyle: GoogleFonts.bricolageGrotesque(fontSize: 13, fontWeight: FontWeight.w600),
      ),
      segments: [
        for (final m in methods)
          ButtonSegment<String>(value: m.$1, icon: Icon(m.$2), label: Text(m.$3)),
      ],
      selected: {value},
      onSelectionChanged: (s) => onChanged(s.first),
    );
  }
}

// ── Totals Bar ────────────────────────────────────────────────────────────────

class _TotalsBar extends StatelessWidget {
  final double subtotal;
  final double tax;
  final double total;
  final bool canSubmit;
  final VoidCallback onConfirm;

  const _TotalsBar({
    required this.subtotal, required this.tax, required this.total,
    required this.canSubmit, required this.onConfirm,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 12, 16, 14),
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(top: BorderSide(color: Color(0xFFE4E7EC))),
      ),
      child: SafeArea(
        top: false,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _SummaryRow('Subtotal', subtotal),
            _SummaryRow('Tax (6%)', tax),
            const SizedBox(height: 8),
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Total',
                          style: GoogleFonts.bricolageGrotesque(
                              color: const Color(0xFF667085), fontSize: 12)),
                      Text('RM ${total.toStringAsFixed(2)}',
                          maxLines: 1, overflow: TextOverflow.ellipsis,
                          style: GoogleFonts.bricolageGrotesque(
                              color: AppTheme.kNavy, fontSize: 22, fontWeight: FontWeight.w900)),
                    ],
                  ),
                ),
                const SizedBox(width: 12),
                FilledButton.icon(
                  onPressed: canSubmit ? onConfirm : null,
                  style: FilledButton.styleFrom(
                    minimumSize: const Size(164, 50),
                    backgroundColor: AppTheme.kBlue,
                    textStyle: GoogleFonts.bricolageGrotesque(
                        fontSize: 15, fontWeight: FontWeight.w700),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                  ),
                  icon: const Icon(Icons.check_circle_rounded),
                  label: const Text('Confirm Order'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _SummaryRow extends StatelessWidget {
  final String label;
  final double value;

  const _SummaryRow(this.label, this.value);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label,
              style: GoogleFonts.bricolageGrotesque(
                  color: const Color(0xFF667085), fontSize: 13)),
          Text('RM ${value.toStringAsFixed(2)}',
              style: GoogleFonts.bricolageGrotesque(
                  fontWeight: FontWeight.w700, fontSize: 13)),
        ],
      ),
    );
  }
}

// ── Empty States ──────────────────────────────────────────────────────────────

class _EmptyCart extends StatelessWidget {
  const _EmptyCart();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: const Color(0xFFF9FAFB),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          const Icon(Icons.shopping_basket_rounded, color: Color(0xFF98A2B3), size: 32),
          const SizedBox(height: 8),
          Text('Cart is empty',
              style: GoogleFonts.bricolageGrotesque(
                  color: const Color(0xFF475467), fontWeight: FontWeight.w700)),
        ],
      ),
    );
  }
}

class _InlineEmpty extends StatelessWidget {
  final String text;
  const _InlineEmpty({required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Text(text,
          style: GoogleFonts.bricolageGrotesque(
              color: const Color(0xFF667085), fontSize: 13)),
    );
  }
}
