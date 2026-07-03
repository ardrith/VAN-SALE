import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../providers.dart';
import '../../../core/database/app_database.dart';
import '../../../shared/theme/app_theme.dart';

class ProductsScreen extends ConsumerStatefulWidget {
  const ProductsScreen({super.key});

  @override
  ConsumerState<ProductsScreen> createState() => _ProductsScreenState();
}

class _ProductsScreenState extends ConsumerState<ProductsScreen> {
  final _search = TextEditingController();
  String _query = '';

  @override
  void dispose() {
    _search.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final products = ref.watch(itemSearchProvider(_query));

    return Scaffold(
      backgroundColor: AppTheme.kSurface,
      appBar: AppBar(
        title: Text('Items', style: GoogleFonts.bricolageGrotesque(
            fontSize: 18, fontWeight: FontWeight.w800, color: AppTheme.kNavy)),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(64),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 12),
            child: TextField(
              controller: _search,
              style: GoogleFonts.bricolageGrotesque(fontSize: 14),
              decoration: InputDecoration(
                hintText: 'Search products...',
                hintStyle: GoogleFonts.bricolageGrotesque(
                    fontSize: 14, color: const Color(0xFF94A3B8)),
                prefixIcon: const Icon(Icons.search_rounded, color: Color(0xFF94A3B8)),
                fillColor: Colors.white,
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: const BorderSide(color: Color(0xFFCBD5E1)),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: const BorderSide(color: Color(0xFFCBD5E1)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: const BorderSide(color: AppTheme.kBlue, width: 2),
                ),
                contentPadding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
              ),
              onChanged: (v) => setState(() => _query = v),
            ),
          ),
        ),
      ),
      body: products.when(
        data: (list) {
          if (list.isEmpty) {
            return Center(
              child: Text('No products found',
                  style: GoogleFonts.bricolageGrotesque(
                      color: const Color(0xFF98A2B3), fontSize: 15)),
            );
          }
          return ListView.separated(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 100),
            itemCount: list.length,
            separatorBuilder: (_, __) => const SizedBox(height: 10),
            itemBuilder: (context, i) => _ProductTile(product: list[i]),
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, _) => Center(child: Text('Error: $e')),
      ),
    );
  }
}

class _ProductTile extends ConsumerWidget {
  final ItemHeader product;
  const _ProductTile({required this.product});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final inStock = product.onHand > 0;

    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: const Color(0xFFE4E7EC)),
      ),
      child: Row(
        children: [
          Container(
            width: 56,
            height: 56,
            decoration: BoxDecoration(
              color: AppTheme.kBlueTint,
              borderRadius: BorderRadius.circular(14),
            ),
            child: const Icon(Icons.inventory_2_rounded, size: 26, color: AppTheme.kBlue),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.itemName,
                  style: GoogleFonts.bricolageGrotesque(
                      fontWeight: FontWeight.w700, fontSize: 14, color: AppTheme.kNavy),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    Text(
                      'RM ${product.mrp.toStringAsFixed(2)}',
                      style: GoogleFonts.bricolageGrotesque(
                          color: AppTheme.kBlue, fontWeight: FontWeight.w700, fontSize: 13),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 2),
                      decoration: BoxDecoration(
                        color: inStock ? AppTheme.kGreenTint : AppTheme.kRedTint,
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Text(
                        inStock
                            ? 'Stock: ${product.onHand.toStringAsFixed(0)}'
                            : 'Out of stock',
                        style: GoogleFonts.bricolageGrotesque(
                          fontSize: 11,
                          fontWeight: FontWeight.w600,
                          color: inStock ? AppTheme.kGreen : AppTheme.kRed,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(width: 8),
          GestureDetector(
            onTap: () => ref.read(cartProvider.notifier).addProduct(product),
            child: Container(
              width: 38,
              height: 38,
              decoration: BoxDecoration(
                color: AppTheme.kBlue,
                borderRadius: BorderRadius.circular(11),
              ),
              child: const Icon(Icons.add_rounded, color: Colors.white, size: 20),
            ),
          ),
        ],
      ),
    );
  }
}
