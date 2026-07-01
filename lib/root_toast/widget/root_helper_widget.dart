import 'package:flutter_toast_rana/core/path/path.dart';

class RootHelperWidget extends StatelessWidget {
  final Size size;
  final double height, sizeTween, opacityTween, borderRadiusTween, borderRadius;
  final double? width;
  final bool isSlide, bubble, widgetShow;
  final ToastDecoration toastDecoration;
  final Widget? child;
  const RootHelperWidget({
    super.key,
    required this.size,
    required this.height,
    required this.sizeTween,
    required this.opacityTween,
    required this.isSlide,
    required this.bubble,
    required this.widgetShow,
    required this.borderRadiusTween,
    required this.borderRadius,
    this.width,
    required this.toastDecoration,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: toastDecoration.margin,
      padding: toastDecoration.padding,

      height: isSlide
          ? (bubble
                ? (height * sizeTween).clamp(40, height)
                : height * sizeTween)
          : (height * sizeTween),
      width: isSlide
          ? (bubble
                ? ((width ?? size.width) * sizeTween).clamp(
                    40,
                    (width ?? size.width),
                  )
                : ((width ?? size.width) * sizeTween))
          : (width ?? size.width) * sizeTween,
      decoration: BoxDecoration(
        color: toastDecoration.color,
        borderRadius: BorderRadius.circular(
          bubble
              ? (100 * borderRadiusTween).clamp(
                  toastDecoration.borderRadius,
                  100,
                )
              : toastDecoration.borderRadius,
        ),
        border: toastDecoration.border,
        boxShadow: toastDecoration.boxShadow,
        gradient: toastDecoration.gradient,
        backgroundBlendMode: toastDecoration.blendMode,
        image: toastDecoration.decorationImage,
      ),
      child: bubble
          ? (widgetShow
                ? Opacity(
                    opacity: opacityTween,
                    child: Center(child: child),
                  )
                : SizedBox())
          : Center(child: child),
    );
  }
}
