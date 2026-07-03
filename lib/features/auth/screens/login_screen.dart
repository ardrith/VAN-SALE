import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../providers.dart';
import '../../../shared/theme/app_theme.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  ConsumerState<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  final _companyCtrl = TextEditingController();
  final _userCtrl    = TextEditingController();
  final _passCtrl    = TextEditingController();
  bool _obscure     = true;
  bool _rememberMe  = false;

  @override
  void dispose() {
    _companyCtrl.dispose();
    _userCtrl.dispose();
    _passCtrl.dispose();
    super.dispose();
  }

  void _login() => ref.read(authProvider.notifier).login(
        _companyCtrl.text.trim(), _userCtrl.text.trim(), _passCtrl.text, _rememberMe);

  @override
  Widget build(BuildContext context) {
    final auth = ref.watch(authProvider);

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 52),

              // App icon
              Container(
                width: 64, height: 64,
                decoration: BoxDecoration(
                  color: AppTheme.kBlue,
                  borderRadius: BorderRadius.circular(18),
                  boxShadow: [
                    BoxShadow(
                      color: AppTheme.kBlue.withValues(alpha: 0.28),
                      blurRadius: 18, offset: const Offset(0, 7),
                    ),
                  ],
                ),
                child: const Icon(Icons.local_shipping_rounded, color: Colors.white, size: 32),
              ),

              const SizedBox(height: 22),
              Text('Van Sale',
                  style: GoogleFonts.bricolageGrotesque(
                      fontSize: 32, fontWeight: FontWeight.w800, color: AppTheme.kNavy)),
              const SizedBox(height: 5),
              Text('Sign in to continue',
                  style: GoogleFonts.bricolageGrotesque(
                      fontSize: 14, fontWeight: FontWeight.w500, color: AppTheme.kSlate)),

              const SizedBox(height: 36),

              // Fields
              _Field(ctrl: _companyCtrl, label: 'Company Name',
                  icon: Icons.work_outline_rounded, action: TextInputAction.next),
              const SizedBox(height: 14),
              _Field(ctrl: _userCtrl, label: 'Username',
                  icon: Icons.person_outline_rounded, action: TextInputAction.next),
              const SizedBox(height: 14),
              TextField(
                controller: _passCtrl,
                obscureText: _obscure,
                style: GoogleFonts.bricolageGrotesque(fontSize: 14, fontWeight: FontWeight.w500),
                onSubmitted: (_) => _login(),
                decoration: InputDecoration(
                  labelText: 'Password',
                  prefixIcon: const Icon(Icons.lock_outline_rounded),
                  suffixIcon: IconButton(
                    icon: Icon(_obscure ? Icons.visibility_off_outlined : Icons.visibility_outlined),
                    onPressed: () => setState(() => _obscure = !_obscure),
                  ),
                ),
              ),

              // Remember me
              Row(children: [
                Checkbox(
                  value: _rememberMe,
                  activeColor: AppTheme.kBlue,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                  onChanged: (v) => setState(() => _rememberMe = v ?? false),
                ),
                Text('Remember me',
                    style: GoogleFonts.bricolageGrotesque(
                        fontSize: 14, fontWeight: FontWeight.w500, color: AppTheme.kNavy)),
              ]),

              // Error
              if (auth.error != null) ...[
                const SizedBox(height: 8),
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: AppTheme.kRedTint,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: AppTheme.kRed.withValues(alpha: 0.25)),
                  ),
                  child: Row(children: [
                    Icon(Icons.error_outline, color: AppTheme.kRed, size: 18),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text(auth.error!,
                          style: GoogleFonts.bricolageGrotesque(
                              color: AppTheme.kRed, fontSize: 13)),
                    ),
                  ]),
                ),
              ],

              const SizedBox(height: 24),

              // Button
              if (auth.isLoading)
                Column(children: [
                  const Center(child: CircularProgressIndicator()),
                  const SizedBox(height: 10),
                  Center(child: Text('Syncing master data…',
                      style: GoogleFonts.bricolageGrotesque(
                          color: AppTheme.kSlate, fontSize: 13))),
                ])
              else
                SizedBox(
                  width: double.infinity,
                  height: 52,
                  child: FilledButton(
                    onPressed: _login,
                    style: FilledButton.styleFrom(
                      backgroundColor: AppTheme.kBlue,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(13)),
                      textStyle: GoogleFonts.bricolageGrotesque(
                          fontSize: 15, fontWeight: FontWeight.w700),
                    ),
                    child: const Text('Sign In & Sync Data'),
                  ),
                ),

              const SizedBox(height: 28),
              Center(
                child: Text('Data syncs automatically when online',
                    style: GoogleFonts.bricolageGrotesque(
                        color: const Color(0xFF94A3B8), fontSize: 12)),
              ),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}

class _Field extends StatelessWidget {
  final TextEditingController ctrl;
  final String label;
  final IconData icon;
  final TextInputAction action;
  const _Field({required this.ctrl, required this.label, required this.icon, required this.action});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: ctrl,
      textInputAction: action,
      style: GoogleFonts.bricolageGrotesque(fontSize: 14, fontWeight: FontWeight.w500),
      decoration: InputDecoration(labelText: label, prefixIcon: Icon(icon)),
    );
  }
}
