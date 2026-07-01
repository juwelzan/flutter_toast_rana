import 'package:flutter_toast_rana/core/path/path.dart';

class Massage extends StatelessWidget {
  final ToastColorScheme toastColorScheme;
  final MassagePositionType massagePositionType;
  final Widget? child;
  final ToastDecoration toastDecoration;
  final double verticalPadding;
  final String icon;
  final String? massage, title;
  final TextStyle? massageStyle, titleStyle;
  final ToastConfigure toastConfigure;
  final VoidCallback onEnd;
  const Massage({
    super.key,
    required this.toastColorScheme,
    required this.onEnd,
    required this.massagePositionType,
    required this.verticalPadding,
    required this.toastDecoration,
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
    return ToastGestureConfigure(
      massagePositionType: massagePositionType,
      verticalPadding: verticalPadding,
      toastDecoration: toastDecoration,
      toastChild:
          child ??
          ToastChild(
            width: toastDecoration.height,
            toastColorScheme: toastColorScheme,
            icon: icon,
            massage: massage,
            massageStyle: massageStyle,
            title: title,
            titleStyle: titleStyle,
          ),

      toastConfigure: toastConfigure,
      onEnd: onEnd,
    );
  }
}
