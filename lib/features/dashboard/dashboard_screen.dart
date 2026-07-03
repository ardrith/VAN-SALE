import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../providers.dart';
import '../../../shared/theme/app_theme.dart';

// ─── Pending Bill model (UI only – wire to real DB later) ────────────────────
class _PendingBill {
  final String id;
  final String invoiceNo;
  final String customer;
  final String amount;
  final String type;    // 'Invoice' | 'Payment' | 'Return'
  final String time;
  final _BillStatus status;
  const _PendingBill({
    required this.id, required this.invoiceNo, required this.customer,
    required this.amount, required this.type, required this.time,
    required this.status,
  });
}

enum _BillStatus { pending, uploading, uploaded, failed }

// ─── Quick action model ───────────────────────────────────────────────────────
class _QAction {
  final IconData icon;
  final String label;
  final Color iconColor;
  final Color iconBg;
  const _QAction({required this.icon, required this.label,
      required this.iconColor, required this.iconBg});
}

// ─────────────────────────────────────────────────────────────────────────────
// DASHBOARD SCREEN
// ─────────────────────────────────────────────────────────────────────────────
class DashboardScreen extends ConsumerWidget {
  const DashboardScreen({super.key});

  static final _pending = [
    const _PendingBill(id: '1', invoiceNo: 'INV-1042', customer: 'Raj Stores',
        amount: '₹12,600', type: 'Invoice',  time: 'Today 9:41 AM', status: _BillStatus.pending),
    const _PendingBill(id: '2', invoiceNo: 'PAY-0391', customer: 'Metro Mart',
        amount: '₹4,200',  type: 'Payment',  time: 'Today 8:15 AM', status: _BillStatus.failed),
    const _PendingBill(id: '3', invoiceNo: 'INV-1043', customer: 'City Pharma',
        amount: '₹8,900',  type: 'Invoice',  time: 'Today 7:50 AM', status: _BillStatus.pending),
    const _PendingBill(id: '4', invoiceNo: 'RET-0021', customer: 'Sun Traders',
        amount: '₹1,100',  type: 'Return',   time: 'Yesterday',     status: _BillStatus.uploaded),
  ];

  static const _qActions = [
    _QAction(icon: Icons.add_shopping_cart_rounded, label: 'New Order',
        iconColor: Color(0xFF2563EB), iconBg: Color(0xFFEFF6FF)),
    _QAction(icon: Icons.receipt_long_rounded,      label: 'Invoice',
        iconColor: Color(0xFF7C3AED), iconBg: Color(0xFFF5F3FF)),
    _QAction(icon: Icons.payments_rounded,          label: 'Collection',
        iconColor: Color(0xFF059669), iconBg: Color(0xFFECFDF5)),
    _QAction(icon: Icons.undo_rounded,              label: 'Return',
        iconColor: Color(0xFFEA580C), iconBg: Color(0xFFFFF7ED)),
    _QAction(icon: Icons.request_quote_rounded,     label: 'Quotation',
        iconColor: Color(0xFF0891B2), iconBg: Color(0xFFECFEFF)),
    _QAction(icon: Icons.local_shipping_rounded,    label: 'Delivery',
        iconColor: Color(0xFFDB2777), iconBg: Color(0xFFFDF2F8)),
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final auth = ref.watch(authProvider);
    final username = auth.user?.username ?? 'Salesman';
    final org      = auth.user?.organisation ?? 'Van Sales';
    final isOnline = ref.watch(isOnlineProvider);

    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ));

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: CustomScrollView(
          physics: const ClampingScrollPhysics(),
          slivers: [

            // ── 1. USER HEADER ──────────────────────────────────────────
            SliverToBoxAdapter(child: _UserHeader(
              username: username, org: org, isOnline: isOnline,
              onLogout: () => ref.read(authProvider.notifier).logout(),
            )),

       
            // ── 3. QUICK ACTIONS ────────────────────────────────────────
            SliverToBoxAdapter(child: _SectionHeader(
              title: 'Quick Actions',
              padding: const EdgeInsets.fromLTRB(16, 22, 16, 10),
            )),
            const SliverToBoxAdapter(child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: _QuickActionsGrid(actions: _qActions),
            )),

            // ── 4. MASTER IMPORT / UPLOAD BILLS ─────────────────────────
            SliverToBoxAdapter(child: _SectionHeader(
              title: 'Sync & Data',
              padding: const EdgeInsets.fromLTRB(16, 24, 16, 10),
            )),
            const SliverToBoxAdapter(child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: _SyncDataPanel(),
            )),

            // ── 5. PENDING BILLS ─────────────────────────────────────────
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(16, 24, 16, 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Pending Uploads',
                        style: GoogleFonts.bricolageGrotesque(
                            fontSize: 14, fontWeight: FontWeight.w700,
                            color: AppTheme.kNavy)),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                      decoration: BoxDecoration(
                        color: AppTheme.kRedTint,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text('3 pending',
                          style: GoogleFonts.bricolageGrotesque(
                              fontSize: 11, fontWeight: FontWeight.w700,
                              color: AppTheme.kRed)),
                    ),
                  ],
                ),
              ),
            ),

            SliverList(
              delegate: SliverChildBuilderDelegate(
                (_, i) => Padding(
                  padding: EdgeInsets.fromLTRB(16, i == 0 ? 0 : 6, 16, 0),
                  child: _PendingBillTile(bill: _pending[i]),
                ),
                childCount: _pending.length,
              ),
            ),

            const SliverToBoxAdapter(child: SizedBox(height: 110)),
          ],
        ),
      ),
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────
// 1. USER HEADER  (top-left user info + 3 right-side icon buttons)
// ─────────────────────────────────────────────────────────────────────────────
class _UserHeader extends StatelessWidget {
  final String username;
  final String org;
  final bool isOnline;
  final VoidCallback onLogout;
  const _UserHeader({required this.username, required this.org,
      required this.isOnline, required this.onLogout});

  String _initials(String n) {
    final p = n.trim().split(' ');
    return p.length >= 2
        ? '${p[0][0]}${p[1][0]}'.toUpperCase()
        : n.substring(0, n.length.clamp(0, 2)).toUpperCase();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.fromLTRB(16, 14, 16, 14),
      child: Row(
        children: [
          // Avatar
          GestureDetector(
            onTap: onLogout,
            child: CircleAvatar(
              radius: 24,
              backgroundColor: AppTheme.kBlueTint,
              child: Text(_initials(username),
                  style: GoogleFonts.bricolageGrotesque(
                      fontSize: 15, fontWeight: FontWeight.w800,
                      color: AppTheme.kBlue)),
            ),
          ),
          const SizedBox(width: 12),

          // Name + org + status
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(username,
                    maxLines: 1, overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.bricolageGrotesque(
                        fontSize: 16, fontWeight: FontWeight.w800,
                        color: AppTheme.kNavy)),
                const SizedBox(height: 2),
                Row(children: [
                  Text(org,
                      style: GoogleFonts.bricolageGrotesque(
                          fontSize: 11, fontWeight: FontWeight.w500,
                          color: AppTheme.kSlate)),
                  const SizedBox(width: 8),
                  Container(
                    width: 6, height: 6,
                    decoration: BoxDecoration(
                      color: isOnline
                          ? const Color(0xFF22C55E)
                          : const Color(0xFF94A3B8),
                      shape: BoxShape.circle,
                    ),
                  ),
                  const SizedBox(width: 4),
                  Text(isOnline ? 'Online' : 'Offline',
                      style: GoogleFonts.bricolageGrotesque(
                          fontSize: 11, fontWeight: FontWeight.w600,
                          color: isOnline
                              ? const Color(0xFF22C55E)
                              : const Color(0xFF94A3B8))),
                ]),
              ],
            ),
          ),

          // 3 icon buttons
          Row(children: [
            _HeaderIconBtn(
              icon: Icons.bluetooth_rounded,
              tooltip: 'Bluetooth Printer',
              color: const Color(0xFF2563EB),
              bg: const Color(0xFFEFF6FF),
              onTap: () {},
            ),
            const SizedBox(width: 8),
            _HeaderIconBtn(
              icon: Icons.route_rounded,
              tooltip: 'Route Plan',
              color: const Color(0xFF059669),
              bg: const Color(0xFFECFDF5),
              onTap: () {},
            ),
            const SizedBox(width: 8),
            _HeaderIconBtn(
              icon: Icons.settings_rounded,
              tooltip: 'Settings',
              color: const Color(0xFF64748B),
              bg: const Color(0xFFF1F5F9),
              onTap: () {},
            ),
          ]),
        ],
      ),
    );
  }
}

class _HeaderIconBtn extends StatelessWidget {
  final IconData icon;
  final String tooltip;
  final Color color;
  final Color bg;
  final VoidCallback onTap;
  const _HeaderIconBtn({required this.icon, required this.tooltip,
      required this.color, required this.bg, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: tooltip,
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          width: 36, height: 36,
          decoration: BoxDecoration(color: bg, borderRadius: BorderRadius.circular(10)),
          child: Icon(icon, color: color, size: 18),
        ),
      ),
    );
  }
}


class _QuickActionsGrid extends StatelessWidget {
  final List<_QAction> actions;
  const _QuickActionsGrid({required this.actions});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
      decoration: BoxDecoration(
        color: const Color(0xFFF8F9FA),
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: const Color(0xFFF1F3F5)),
      ),
      child: GridView.count(
        crossAxisCount: 3,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        childAspectRatio: 1.1,
        children: actions.map((a) => _QActionTile(action: a)).toList(),
      ),
    );
  }
}

class _QActionTile extends StatelessWidget {
  final _QAction action;
  const _QActionTile({required this.action});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () {},
        borderRadius: BorderRadius.circular(14),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
            width: 48, height: 48,
            decoration: BoxDecoration(
                color: action.iconBg, borderRadius: BorderRadius.circular(14)),
            child: Icon(action.icon, color: action.iconColor, size: 22),
          ),
          const SizedBox(height: 7),
          Text(action.label,
              style: GoogleFonts.bricolageGrotesque(
                  fontSize: 11, fontWeight: FontWeight.w600,
                  color: AppTheme.kNavy),
              textAlign: TextAlign.center),
        ]),
      ),
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────
// 4. SYNC & DATA PANEL  (Master Import + Upload All Bills)
// ─────────────────────────────────────────────────────────────────────────────
class _SyncDataPanel extends StatelessWidget {
  const _SyncDataPanel();

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(child: _SyncTile(
            icon: Icons.cloud_download_rounded,
            iconColor: const Color(0xFF7C3AED),
            iconBg: const Color(0xFFF5F3FF),
            title: 'Master Import',
            subtitle: 'Pull latest data',
            onTap: () {},
          )),
          const SizedBox(width: 12),
          Expanded(child: _SyncTile(
            icon: Icons.cloud_upload_rounded,
            iconColor: const Color(0xFF059669),
            iconBg: const Color(0xFFECFDF5),
            title: 'Upload Bills',
            subtitle: 'Push all pending',
            onTap: () {},
          )),
        ],
      ),
    );
  }
}

class _SyncTile extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final Color iconBg;
  final String title;
  final String subtitle;
  final VoidCallback onTap;
  const _SyncTile({required this.icon, required this.iconColor, required this.iconBg,
      required this.title, required this.subtitle, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: const Color(0xFFF8F9FA),
      borderRadius: BorderRadius.circular(16),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(16),
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: const Color(0xFFF1F3F5)),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 44, height: 44,
                decoration: BoxDecoration(
                    color: iconBg, borderRadius: BorderRadius.circular(12)),
                child: Icon(icon, color: iconColor, size: 22),
              ),
              const SizedBox(height: 12),
              Text(title,
                  style: GoogleFonts.bricolageGrotesque(
                      fontSize: 14, fontWeight: FontWeight.w700,
                      color: AppTheme.kNavy)),
              const SizedBox(height: 3),
              Text(subtitle,
                  style: GoogleFonts.bricolageGrotesque(
                      fontSize: 12, color: AppTheme.kSlate)),
            ],
          ),
        ),
      ),
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────
// 5. PENDING BILL TILE  (individual upload, status, view pdf, print)
// ─────────────────────────────────────────────────────────────────────────────
class _PendingBillTile extends StatefulWidget {
  final _PendingBill bill;
  const _PendingBillTile({required this.bill});

  @override
  State<_PendingBillTile> createState() => _PendingBillTileState();
}

class _PendingBillTileState extends State<_PendingBillTile> {
  late _BillStatus _status;

  @override
  void initState() {
    super.initState();
    _status = widget.bill.status;
  }

  Color get _statusColor => switch (_status) {
    _BillStatus.pending   => const Color(0xFFEA580C),
    _BillStatus.uploading => AppTheme.kBlue,
    _BillStatus.uploaded  => AppTheme.kGreen,
    _BillStatus.failed    => AppTheme.kRed,
  };

  Color get _statusBg => switch (_status) {
    _BillStatus.pending   => const Color(0xFFFFF7ED),
    _BillStatus.uploading => AppTheme.kBlueTint,
    _BillStatus.uploaded  => AppTheme.kGreenTint,
    _BillStatus.failed    => AppTheme.kRedTint,
  };

  String get _statusLabel => switch (_status) {
    _BillStatus.pending   => 'Pending',
    _BillStatus.uploading => 'Uploading…',
    _BillStatus.uploaded  => 'Uploaded',
    _BillStatus.failed    => 'Failed',
  };

  IconData get _typeIcon => switch (widget.bill.type) {
    'Payment' => Icons.payments_rounded,
    'Return'  => Icons.undo_rounded,
    _         => Icons.receipt_long_rounded,
  };

  Color get _typeColor => switch (widget.bill.type) {
    'Payment' => AppTheme.kGreen,
    'Return'  => const Color(0xFFEA580C),
    _         => AppTheme.kBlue,
  };

  Color get _typeBg => switch (widget.bill.type) {
    'Payment' => AppTheme.kGreenTint,
    'Return'  => const Color(0xFFFFF7ED),
    _         => AppTheme.kBlueTint,
  };

  void _upload() async {
    if (_status == _BillStatus.uploaded || _status == _BillStatus.uploading) return;
    setState(() => _status = _BillStatus.uploading);
    await Future.delayed(const Duration(seconds: 2));
    if (mounted) setState(() => _status = _BillStatus.uploaded);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 2),
      decoration: BoxDecoration(
        color: const Color(0xFFF8F9FA),
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: const Color(0xFFF1F3F5)),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
        child: Row(children: [
          // Type icon
          Container(
            width: 38, height: 38,
            decoration: BoxDecoration(color: _typeBg, borderRadius: BorderRadius.circular(10)),
            child: Icon(_typeIcon, color: _typeColor, size: 18),
          ),
          const SizedBox(width: 8),

          // Info
          Expanded(
            child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(children: [
                Flexible(
                  child: Text(widget.bill.invoiceNo,
                      maxLines: 1, overflow: TextOverflow.ellipsis,
                      style: GoogleFonts.bricolageGrotesque(
                          fontSize: 12, fontWeight: FontWeight.w700, color: AppTheme.kNavy)),
                ),
                const SizedBox(width: 5),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
                  decoration: BoxDecoration(
                      color: _statusBg, borderRadius: BorderRadius.circular(6)),
                  child: Text(_statusLabel,
                      style: GoogleFonts.bricolageGrotesque(
                          fontSize: 9, fontWeight: FontWeight.w700,
                          color: _statusColor)),
                ),
              ]),
              const SizedBox(height: 2),
              Text('${widget.bill.customer} · ${widget.bill.time}',
                  style: GoogleFonts.bricolageGrotesque(
                      fontSize: 10, color: AppTheme.kSlate),
                  maxLines: 1, overflow: TextOverflow.ellipsis),
            ]),
          ),

          // Amount
          Text(widget.bill.amount,
              style: GoogleFonts.bricolageGrotesque(
                  fontSize: 12, fontWeight: FontWeight.w700,
                  color: AppTheme.kNavy)),
          const SizedBox(width: 4),

          // Action icons
          Row(mainAxisSize: MainAxisSize.min, children: [
            _BillIconBtn(
              icon: _status == _BillStatus.uploading
                  ? Icons.hourglass_top_rounded
                  : _status == _BillStatus.uploaded
                      ? Icons.check_circle_rounded
                      : Icons.upload_rounded,
              color: _statusColor,
              tooltip: 'Upload',
              onTap: _upload,
            ),
            _BillIconBtn(
              icon: Icons.picture_as_pdf_rounded,
              color: const Color(0xFF7C3AED),
              tooltip: 'View PDF',
              onTap: () {},
            ),
            _BillIconBtn(
              icon: Icons.print_rounded,
              color: AppTheme.kSlate,
              tooltip: 'Print',
              onTap: () {},
            ),
          ]),
        ]),
      ),
    );
  }
}

class _BillIconBtn extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String tooltip;
  final VoidCallback onTap;
  const _BillIconBtn({required this.icon, required this.color,
      required this.tooltip, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: tooltip,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(8),
        child: Padding(
          padding: const EdgeInsets.all(4),
          child: Icon(icon, size: 16, color: color),
        ),
      ),
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────
// SHARED HELPERS
// ─────────────────────────────────────────────────────────────────────────────
class _SectionHeader extends StatelessWidget {
  final String title;
  final EdgeInsets padding;
  const _SectionHeader({required this.title, required this.padding});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Text(title.toUpperCase(),
          style: GoogleFonts.bricolageGrotesque(
              fontSize: 11, fontWeight: FontWeight.w700,
              color: const Color(0xFF94A3B8), letterSpacing: 1.0)),
    );
  }
}
