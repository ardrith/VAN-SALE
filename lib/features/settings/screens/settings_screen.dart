import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../providers.dart';
import '../../../shared/theme/app_theme.dart';

class SettingsScreen extends ConsumerWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final auth = ref.watch(authProvider);
    final username = auth.user?.username ?? 'Salesman';
    final initials = username.trim().isEmpty
        ? 'S'
        : username.trim().split(' ').map((e) => e[0]).take(2).join().toUpperCase();

    return Scaffold(
      backgroundColor: AppTheme.kSurface,
      appBar: AppBar(
        title: Text('Settings', style: GoogleFonts.bricolageGrotesque(
            fontSize: 18, fontWeight: FontWeight.w800, color: AppTheme.kNavy)),
      ),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(16, 20, 16, 100),
        children: [
          // Profile card
          Container(
            padding: const EdgeInsets.all(18),
            decoration: BoxDecoration(
              color: AppTheme.kBlue,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 28,
                  backgroundColor: Colors.white.withValues(alpha: 0.20),
                  child: Text(
                    initials,
                    style: GoogleFonts.bricolageGrotesque(
                        fontSize: 18, fontWeight: FontWeight.w800, color: Colors.white),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        username,
                        style: GoogleFonts.bricolageGrotesque(
                            fontSize: 17, fontWeight: FontWeight.w800, color: Colors.white),
                      ),
                      const SizedBox(height: 3),
                      Text(
                        auth.user?.organisation ?? 'Van Sales',
                        style: GoogleFonts.bricolageGrotesque(
                            fontSize: 12, color: Colors.white.withValues(alpha: 0.60)),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: BoxDecoration(
                    color: const Color(0xFF10B981).withValues(alpha: 0.18),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    'Online',
                    style: GoogleFonts.bricolageGrotesque(
                        fontSize: 11, fontWeight: FontWeight.w700, color: const Color(0xFF10B981)),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 24),

          _GroupLabel('Account'),
          const SizedBox(height: 8),
          _SettingsTile(
            icon: Icons.person_outline_rounded,
            title: 'Profile',
            subtitle: 'View account details',
            onTap: () {},
          ),
          _SettingsTile(
            icon: Icons.lock_outline_rounded,
            title: 'Security',
            subtitle: 'Update password and access',
            onTap: () {},
          ),

          const SizedBox(height: 20),
          _GroupLabel('Data'),
          const SizedBox(height: 8),
          _SettingsTile(
            icon: Icons.sync_rounded,
            title: 'Data Sync',
            subtitle: 'Import master data and sync orders',
            onTap: () => ref.read(authProvider.notifier).syncNow(),
          ),
          _SettingsTile(
            icon: Icons.notifications_none_rounded,
            title: 'Notifications',
            subtitle: 'Manage alerts and reminders',
            onTap: () {},
          ),

          const SizedBox(height: 28),

          // Logout
          GestureDetector(
            onTap: () => ref.read(authProvider.notifier).logout(),
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 15),
              decoration: BoxDecoration(
                color: const Color(0xFFFFE4E4),
                borderRadius: BorderRadius.circular(14),
                border: Border.all(color: AppTheme.kRed.withValues(alpha: 0.20)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.logout_rounded, color: AppTheme.kRed, size: 20),
                  const SizedBox(width: 8),
                  Text(
                    'Logout',
                    style: GoogleFonts.bricolageGrotesque(
                        fontSize: 15, fontWeight: FontWeight.w700, color: AppTheme.kRed),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _GroupLabel extends StatelessWidget {
  final String text;
  const _GroupLabel(this.text);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 4),
      child: Text(
        text.toUpperCase(),
        style: GoogleFonts.bricolageGrotesque(
          fontSize: 11,
          fontWeight: FontWeight.w700,
          color: const Color(0xFF98A2B3),
          letterSpacing: 1.0,
        ),
      ),
    );
  }
}

class _SettingsTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final VoidCallback onTap;

  const _SettingsTile({
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Material(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(14),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 13),
            child: Row(
              children: [
                Container(
                  width: 42,
                  height: 42,
                  decoration: BoxDecoration(
                    color: AppTheme.kBlueTint,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Icon(icon, color: AppTheme.kBlue, size: 20),
                ),
                const SizedBox(width: 14),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(title,
                          style: GoogleFonts.bricolageGrotesque(
                              fontWeight: FontWeight.w700, fontSize: 14, color: AppTheme.kNavy)),
                      Text(subtitle,
                          style: GoogleFonts.bricolageGrotesque(
                              fontSize: 12, color: const Color(0xFF667085))),
                    ],
                  ),
                ),
                const Icon(Icons.chevron_right_rounded, color: Color(0xFFD0D5DD), size: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
