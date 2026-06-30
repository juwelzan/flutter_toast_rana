import 'package:flutter/material.dart';
import 'package:flutter_toast_rana/core/assets/assets.dart';
import 'package:flutter_toast_rana/core/theme/toast_theme.dart';

import 'package:flutter_toast_rana/toast/overlay_toast.dart';
import 'package:flutter_toast_rana/toast_type/toast_decoration.dart';
import 'package:flutter_toast_rana/toast_type/toast_enum_type.dart';

class FlutterToastRana {
  static void error({
    required BuildContext context,
    ErrorIcon errorIcon = .dizzy,
    MassagePositionType massagePositionType = .top,
    MassageShowType massageShowType = .bubbleSlide,
    MassageSlide massageSlide = .none,
    Widget? child,
    Duration? animation,
    Duration? toStand,
    double? verticalPadding,
    ToastDecoration? toastDecoration,
    String? massage,
    String? title,
    TextStyle? massageStyle,
    TextStyle? titleStyle,
  }) {
    OverlayToast.show(
      context: context,
      toastColorScheme: ToastTheme.error,
      icon: errorIcon.path,
      massagePosition: massagePositionType,
      massageShowType: massageShowType,
      massageSlide: massageSlide,
      animation: animation,
      child: child,
      toStand: toStand,
      toastDecoration: toastDecoration,
      verticalPadding: verticalPadding,
      massage: massage,
      massageStyle: massageStyle,
      title: title,
      titleStyle: titleStyle,
    );
  }

  static void info({
    required BuildContext context,
    InfoIcon infoIcon = .faceMonocle,
    MassagePositionType massagePositionType = .top,
    MassageShowType massageShowType = .bubbleSlide,
    MassageSlide massageSlide = .none,
    Widget? child,
    Duration? animation,
    Duration? toStand,
    double? verticalPadding,
    ToastDecoration? toastDecoration,
    String? massage,
    String? title,
    TextStyle? massageStyle,
    TextStyle? titleStyle,
  }) {
    OverlayToast.show(
      context: context,
      toastColorScheme: ToastTheme.info,
      icon: infoIcon.path,
      massagePosition: massagePositionType,
      massageShowType: massageShowType,
      massageSlide: massageSlide,
      animation: animation,
      child: child,
      toStand: toStand,
      toastDecoration: toastDecoration,
      verticalPadding: verticalPadding,
      massage: massage,
      massageStyle: massageStyle,
      title: title,
      titleStyle: titleStyle,
    );
  }

  static void success({
    required BuildContext context,
    SuccessIcon successIcon = .faceSmileHearts,
    MassagePositionType massagePositionType = .top,
    MassageShowType massageShowType = .bubbleSlide,
    MassageSlide massageSlide = .none,
    Widget? child,
    Duration? animation,
    Duration? toStand,
    double? verticalPadding,
    ToastDecoration? toastDecoration,
    String? massage,
    String? title,
    TextStyle? massageStyle,
    TextStyle? titleStyle,
  }) {
    OverlayToast.show(
      context: context,
      toastColorScheme: ToastTheme.success,
      icon: successIcon.path,
      massagePosition: massagePositionType,
      massageShowType: massageShowType,
      massageSlide: massageSlide,
      animation: animation,
      child: child,
      toStand: toStand,
      toastDecoration: toastDecoration,
      verticalPadding: verticalPadding,
      massage: massage,
      massageStyle: massageStyle,
      title: title,
      titleStyle: titleStyle,
    );
  }

  static void warning({
    required BuildContext context,
    WarningIcon warningIcon = .faceHushed,
    MassagePositionType massagePositionType = .top,
    MassageShowType massageShowType = .bubbleSlide,
    MassageSlide massageSlide = .none,
    Widget? child,
    Duration? animation,
    Duration? toStand,
    double? verticalPadding,
    ToastDecoration? toastDecoration,
    String? massage,
    String? title,
    TextStyle? massageStyle,
    TextStyle? titleStyle,
  }) {
    OverlayToast.show(
      context: context,
      toastColorScheme: ToastTheme.warning,
      icon: warningIcon.path,
      massagePosition: massagePositionType,
      massageShowType: massageShowType,
      massageSlide: massageSlide,
      animation: animation,
      child: child,
      toStand: toStand,
      toastDecoration: toastDecoration,
      verticalPadding: verticalPadding,
      massage: massage,
      massageStyle: massageStyle,
      title: title,
      titleStyle: titleStyle,
    );
  }
}
