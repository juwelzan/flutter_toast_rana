import 'package:flutter/material.dart';
import 'package:flutter_toast_rana/core/theme/toast_theme.dart';
import 'package:flutter_toast_rana/massage_position/massage_position.dart';
import 'package:flutter_toast_rana/toast_type/toast_enum_type.dart';

class OverlayToast {
  const OverlayToast._();
  static OverlayEntry? overlayEntry;
  static void show({
    required BuildContext context,
    required ToastColorScheme toastColorScheme,
    required String icon,
    required MassagePositionType massagePosition,
    MassageShowType? massageShowType,
    MassageSlide? massageSlide,
  }) {
    if (overlayEntry != null) {
      overlayEntry?.remove();
    }
    OverlayState overlayState = Overlay.of(context);

    overlayEntry = OverlayEntry(
      builder: (context) => MassagePosition(
        positionType: massagePosition,
        toastColorScheme: toastColorScheme,
        onEnd: () {
          overlayEntry?.remove();
          overlayEntry = null;
        },
        massageShowType: massageShowType,
        massageSlide: massageSlide,
        icon: icon,
      ),
    );

    overlayState.insert(overlayEntry!);
  }
}
