import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import '../features/customers/screens/customers_screen.dart';
import '../features/dashboard/dashboard_screen.dart';
import '../features/products/screens/products_screen.dart';
import '../features/settings/screens/settings_screen.dart';
import 'shared/theme/app_theme.dart';

class AppShell extends ConsumerStatefulWidget {
  const AppShell({super.key});

  @override
  ConsumerState<AppShell> createState() => _AppShellState();
}

class _AppShellState extends ConsumerState<AppShell> {
  int _index = 0;

  static const _screens = [
    DashboardScreen(),
    CustomersScreen(),
    ProductsScreen(),
    SettingsScreen(),
  ];

  static const _tabs = [
    _TabItem(icon: Icons.home_outlined,        activeIcon: Icons.home_rounded,           label: 'Home'),
    _TabItem(icon: Icons.people_outline_rounded, activeIcon: Icons.people_rounded,        label: 'Customers'),
    _TabItem(icon: Icons.inventory_2_outlined, activeIcon: Icons.inventory_2_rounded,     label: 'Items'),
    _TabItem(icon: Icons.settings_outlined,    activeIcon: Icons.settings_rounded,        label: 'Settings'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: _index, children: _screens),
      bottomNavigationBar: _BottomNav(
        index: _index,
        tabs: _tabs,
        onTap: (i) => setState(() => _index = i),
      ),
    );
  }
}

// ─── Tab descriptor ───────────────────────────────────────────────────────────
class _TabItem {
  final IconData icon;
  final IconData activeIcon;
  final String label;
  const _TabItem({required this.icon, required this.activeIcon, required this.label});
}

// ─── Bottom Nav ───────────────────────────────────────────────────────────────
class _BottomNav extends StatelessWidget {
  final int index;
  final List<_TabItem> tabs;
  final ValueChanged<int> onTap;
  const _BottomNav({required this.index, required this.tabs, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(top: BorderSide(color: Color(0xFFF1F3F5), width: 1)),
      ),
      child: SafeArea(
        top: false,
        child: SizedBox(
          height: 62,
          child: Row(
            children: List.generate(tabs.length, (i) {
              final active = i == index;
              final tab = tabs[i];
              return Expanded(
                child: InkWell(
                  onTap: () => onTap(i),
                  splashColor: AppTheme.kBlueTint,
                  highlightColor: Colors.transparent,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AnimatedContainer(
                        duration: const Duration(milliseconds: 200),
                        curve: Curves.easeInOut,
                        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 4),
                        decoration: BoxDecoration(
                          color: active ? AppTheme.kBlueTint : Colors.transparent,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Icon(
                          active ? tab.activeIcon : tab.icon,
                          size: 22,
                          color: active ? AppTheme.kBlue : const Color(0xFFB0BAC9),
                        ),
                      ),
                      const SizedBox(height: 3),
                      Text(
                        tab.label,
                        style: GoogleFonts.bricolageGrotesque(
                          fontSize: 10,
                          fontWeight: active ? FontWeight.w700 : FontWeight.w500,
                          color: active ? AppTheme.kBlue : const Color(0xFFB0BAC9),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }),
          ),
        ),
      ),
    );
  }
}
