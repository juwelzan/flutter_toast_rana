import 'package:flutter_toast_rana/core/path/path.dart';

class OverlayToast {
  const OverlayToast._();
  static List overlayStateLength = [];

  static void show({
    required BuildContext context,
    required ToastColorScheme toastColorScheme,
    required String icon,
    required MassagePositionType massagePosition,
    MassageShowType? massageShowType,
    MassageSlide? massageSlide,
    Duration? animation,
    Duration? toStand,
    Widget? child,
    ToastDecoration? toastDecoration,
    double? verticalPadding,
    String? massage,
    String? title,
    TextStyle? massageStyle,
    TextStyle? titleStyle,
  }) {
    late OverlayEntry overlayEntry;
    OverlayState overlayState = Overlay.of(context);

    overlayEntry = OverlayEntry(
      builder: (context) => MassagePosition(
        positionType: massagePosition,
        animation: animation,
        toStand: toStand,
        toastDecoration: toastDecoration,
        verticalPadding: verticalPadding,
        toastColorScheme: toastColorScheme,
        onEnd: () {
          overlayEntry.remove();
          if (overlayStateLength.length > 1) {
            overlayStateLength.removeAt(0);
          }
          debugPrint(
            "overlayStateLength remove length ${overlayStateLength.length}",
          );
        },
        massageShowType: massageShowType,
        massageSlide: massageSlide,
        icon: icon,
        massage: massage,
        massageStyle: massageStyle,
        title: title,
        titleStyle: titleStyle,
        child: child,
      ),
    );
    overlayStateLength.add(1);
    debugPrint("overlayStateLength Add length ${overlayStateLength.length}");

    overlayState.insert(overlayEntry);
  }
}
