import 'package:flutter/material.dart';

/// Aita Toast Theme Aita te
/// ````dart
/// # ToastTheme.success
/// # ToastTheme.error
/// # ToastTheme.warning
/// # ToastTheme.info
/// ````
/// ai gula akane paoya jay

/// ,
class ToastTheme {
  static final ToastColorScheme success = ToastColorScheme(
    text: Color(0xff000000),
    icon: Color(0xffffffff),
    primary: Color(0xff22C55E),
    light: Color(0xff4ADE80),
    dark: Color(0xff16A34A),
    background: Color(0xffDCFCE7),
    accent: Color(0xff86EFAC),
    border: Color(0xff22C55E),
    shadow: Color(0xff22C55E),
  );
  static final ToastColorScheme error = ToastColorScheme(
    text: Color(0xff000000),
    icon: Color(0xffffffff),
    primary: Color(0xffEF4444),
    light: Color(0xffF87171),
    dark: Color(0xffDC2626),
    background: Color(0xffFEE2E2),
    accent: Color(0xffFCA5A5),
    border: Color(0xffEF4444),
    shadow: Color(0xffEF4444),
  );
  static final ToastColorScheme warning = ToastColorScheme(
    text: Color(0xff000000),
    icon: Color(0xffffffff),
    primary: Color(0xffF59E0B),
    light: Color(0xffFBBF24),
    dark: Color(0xffD97706),
    background: Color(0xffFEF3C7),
    accent: Color(0xffFCD34D),
    border: Color(0xffFCD34D),
    shadow: Color(0xffF59E0B),
  );
  static final ToastColorScheme info = ToastColorScheme(
    text: Color(0xff000000),
    icon: Color(0xffffffff),
    primary: Color(0xff3B82F6),
    light: Color(0xff60A5FA),
    dark: Color(0xff2563EB),
    background: Color(0xffDBEAFE),
    accent: Color(0xff93C5FD),
    border: Color(0xff1D4ED8),
    shadow: Color(0xff3B82F6),
  );
}

class ToastColorScheme {
  final Color primary;
  final Color text;
  final Color icon;
  final Color light;
  final Color dark;
  final Color background;
  final Color accent;
  final Color border;
  final Color shadow;

  ToastColorScheme({
    required this.primary,
    required this.light,
    required this.dark,
    required this.background,
    required this.accent,
    required this.border,
    required this.shadow,
    required this.text,
    required this.icon,
  });
}
