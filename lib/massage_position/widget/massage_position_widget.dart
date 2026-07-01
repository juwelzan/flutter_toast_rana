import 'package:flutter_toast_rana/core/path/path.dart';

class MassagePositionWidget extends StatelessWidget {
  final ToastColorScheme toastColorScheme;
  final VoidCallback onEnd;
  final MassagePositionType massagePositionType;
  final double? verticalPadding;
  final Widget? child;
  final ToastDecoration? toastDecoration;
  final ToastConfigure toastConfigure;
  final String? massage, title;
  final TextStyle? massageStyle, titleStyle;

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
    this.massage,
    this.title,
    this.massageStyle,
    this.titleStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Massage(
      toastColorScheme: toastColorScheme,
      onEnd: onEnd,
      massagePositionType: massagePositionType,
      verticalPadding: verticalPadding ?? 20,
      toastDecoration: ToastDecoration(
        border:
            toastDecoration?.border ??
            Border.all(width: 2, color: toastColorScheme.border),
        boxShadow:
            toastDecoration?.boxShadow ??
            [
              BoxShadow(
                color: toastColorScheme.shadow.withValues(alpha: 0.8),
                blurRadius: 10,
              ),
            ],
        color: toastDecoration?.color ?? toastColorScheme.background,
        blendMode: toastDecoration?.blendMode,
        borderRadius: toastDecoration?.borderRadius ?? 20,
        decorationImage: toastDecoration?.decorationImage,
        gradient: toastDecoration?.gradient,
        margin: toastDecoration?.margin,
        height: toastDecoration?.height ?? 100,
        padding: toastDecoration?.padding,
        width: toastDecoration?.width,
      ),
      toastConfigure: toastConfigure,
      icon: icon,
      massage: massage,
      massageStyle: massageStyle,
      title: title,
      titleStyle: titleStyle,
      child: child,
    );
  }
}
