import 'package:flutter/material.dart';
import 'package:flutter_toast_rana/core/assets/assets.dart';
import 'package:flutter_toast_rana/core/theme/toast_theme.dart';

import 'package:flutter_toast_rana/toast/overlay_toast.dart';
import 'package:flutter_toast_rana/toast_type/toast_enum_type.dart';

class FlutterToastRana {
  static void error({
    required BuildContext context,
    ErrorIcon errorIcon = .dizzy,
    MassagePositionType massagePositionType = .top,
    MassageShowType massageShowType = .bubbleSlide,
    MassageSlide massageSlide = .none,
  }) {
    OverlayToast.show(
      context: context,
      toastColorScheme: ToastTheme.error,
      icon: errorIcon.path,
      massagePosition: massagePositionType,
      massageShowType: massageShowType,
      massageSlide: massageSlide,
    );
  }

  void info({
    required BuildContext context,
    ErrorIcon errorIcon = .dizzy,
    MassagePositionType massagePositionType = .top,
    MassageShowType massageShowType = .bubbleSlide,
    MassageSlide massageSlide = .none,
  }) {
    OverlayToast.show(
      context: context,
      toastColorScheme: ToastTheme.info,
      icon: errorIcon.path,
      massagePosition: massagePositionType,
      massageShowType: massageShowType,
      massageSlide: massageSlide,
    );
  }

  void success({
    required BuildContext context,
    ErrorIcon errorIcon = .dizzy,
    MassagePositionType massagePositionType = .top,
    MassageShowType massageShowType = .bubbleSlide,
    MassageSlide massageSlide = .none,
  }) {
    OverlayToast.show(
      context: context,
      toastColorScheme: ToastTheme.success,
      icon: errorIcon.path,
      massagePosition: massagePositionType,
      massageShowType: massageShowType,
      massageSlide: massageSlide,
    );
  }

  void warning({
    required BuildContext context,
    ErrorIcon errorIcon = .dizzy,
    MassagePositionType massagePositionType = .top,
    MassageShowType massageShowType = .bubbleSlide,
    MassageSlide massageSlide = .none,
  }) {
    OverlayToast.show(
      context: context,
      toastColorScheme: ToastTheme.warning,
      icon: errorIcon.path,
      massagePosition: massagePositionType,
      massageShowType: massageShowType,
      massageSlide: massageSlide,
    );
  }
}
