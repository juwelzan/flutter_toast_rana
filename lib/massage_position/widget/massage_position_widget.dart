import 'package:flutter/cupertino.dart';
import 'package:flutter_toast_rana/core/theme/toast_theme.dart';
import 'package:flutter_toast_rana/massage_position/widget/massage.dart';
import 'package:flutter_toast_rana/toast_type/toast_configure.dart';
import 'package:flutter_toast_rana/toast_type/toast_decoration.dart';
import 'package:flutter_toast_rana/toast_type/toast_enum_type.dart';

class MassagePositionWidget extends StatelessWidget {
  final ToastColorScheme toastColorScheme;
  final VoidCallback onEnd;
  final MassagePositionType massagePositionType;
  final double? verticalPadding;
  final Widget? child;
  final ToastDecoration? toastDecoration;
  final ToastConfigure toastConfigure;

  final String icon;
  const MassagePositionWidget({
    super.key,
    required this.toastColorScheme,
    required this.onEnd,
    required this.massagePositionType,
    this.verticalPadding,
    this.toastDecoration,
    required this.toastConfigure,
    required this.icon,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Massage(
      toastColorScheme: toastColorScheme,
      onEnd: onEnd,
      massagePositionType: massagePositionType,
      verticalPadding: verticalPadding ?? 20,
      toastDecoration:
          toastDecoration ??
          ToastDecoration(
            border: Border.all(width: 2, color: toastColorScheme.border),
            boxShadow: [
              BoxShadow(
                color: toastColorScheme.shadow.withValues(alpha: 0.8),
                blurRadius: 10,
              ),
            ],
            color: toastColorScheme.background,
          ),
      toastConfigure: toastConfigure,
      icon: icon,
      child: child,
    );
  }
}
