import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../providers.dart';
import '../../../core/database/app_database.dart';
import '../../../shared/theme/app_theme.dart';

class CustomersScreen extends ConsumerStatefulWidget {
  const CustomersScreen({super.key});

  @override
  ConsumerState<CustomersScreen> createState() => _CustomersScreenState();
}

class _CustomersScreenState extends ConsumerState<CustomersScreen> {
  final _search = TextEditingController();
  String _query = '';

  @override
  void dispose() {
    _search.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final customers = ref.watch(customerSearchProvider(_query));

    return Scaffold(
      backgroundColor: AppTheme.kSurface,
      appBar: AppBar(
        title: Text('Customers', style: GoogleFonts.bricolageGrotesque(
          fontSize: 18, fontWeight: FontWeight.w800, color: AppTheme.kNavy)),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(64),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 12),
            child: TextField(
              controller: _search,
              style: GoogleFonts.bricolageGrotesque(fontSize: 14),
              decoration: InputDecoration(
                hintText: 'Search customers...',
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
      body: customers.when(
        data: (list) => list.isEmpty
            ? Center(
                child: Text('No customers found',
                    style: GoogleFonts.bricolageGrotesque(
                        color: const Color(0xFF98A2B3), fontSize: 15)))
            : ListView.separated(
                padding: const EdgeInsets.fromLTRB(16, 16, 16, 100),
                itemCount: list.length,
                separatorBuilder: (_, __) => const SizedBox(height: 10),
                itemBuilder: (_, i) => _CustomerCard(customer: list[i]),
              ),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, _) => Center(child: Text('Error: $e')),
      ),
    );
  }
}

class _CustomerCard extends StatelessWidget {
  final Customer customer;
  const _CustomerCard({required this.customer});

  @override
  Widget build(BuildContext context) {
    final isDebit = customer.balance > 0;

    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: const Color(0xFFE4E7EC)),
      ),
      child: Row(
        children: [
          Container(
            width: 46,
            height: 46,
            decoration: BoxDecoration(
              color: AppTheme.kBlue,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Center(
              child: Text(
                customer.cvName.isNotEmpty ? customer.cvName[0].toUpperCase() : '?',
                style: GoogleFonts.bricolageGrotesque(
                    color: Colors.white, fontWeight: FontWeight.w800, fontSize: 18),
              ),
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(customer.cvName,
                    style: GoogleFonts.bricolageGrotesque(
                        fontWeight: FontWeight.w700, fontSize: 14, color: AppTheme.kNavy)),
                const SizedBox(height: 2),
                Text(customer.cvCode,
                    style: GoogleFonts.bricolageGrotesque(
                        color: const Color(0xFF667085), fontSize: 12)),
                if (customer.area != null)
                  Text(customer.area!,
                      style: GoogleFonts.bricolageGrotesque(
                          color: const Color(0xFF98A2B3), fontSize: 11)),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                decoration: BoxDecoration(
                  color: isDebit ? AppTheme.kRedTint : AppTheme.kGreenTint,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  'RM ${customer.balance.abs().toStringAsFixed(2)}',
                  style: GoogleFonts.bricolageGrotesque(
                    fontWeight: FontWeight.w700,
                    color: isDebit ? AppTheme.kRed : AppTheme.kGreen,
                    fontSize: 12,
                  ),
                ),
              ),
              const SizedBox(height: 3),
              Text(
                isDebit ? 'Overdue' : 'Clear',
                style: GoogleFonts.bricolageGrotesque(
                    color: const Color(0xFF98A2B3), fontSize: 10),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
