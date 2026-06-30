import 'package:flutter/material.dart';
import 'package:flutter_toast_rana/core/theme/toast_theme.dart';
import 'package:flutter_toast_rana/massage_position/massage_position.dart';
import 'package:flutter_toast_rana/toast_type/toast_decoration.dart';
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
    Duration? animation,
    Duration? toStand,
    Widget? child,
    ToastDecoration? toastDecoration,
    double? verticalPadding,
  }) {
    if (overlayEntry != null) {
      overlayEntry?.remove();
    }
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
          overlayEntry?.remove();
          overlayEntry = null;
        },
        massageShowType: massageShowType,
        massageSlide: massageSlide,
        icon: icon,
        child: child,
      ),
    );

    overlayState.insert(overlayEntry!);
  }
}
