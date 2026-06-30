import 'package:flutter/material.dart';
import 'package:flutter_toast_rana/core/theme/toast_theme.dart';
import 'package:flutter_toast_rana/massage_position/widget/massage_position_widget.dart';
import 'package:flutter_toast_rana/toast_type/toast_configure.dart';
import 'package:flutter_toast_rana/toast_type/toast_decoration.dart';
import 'package:flutter_toast_rana/toast_type/toast_enum_type.dart';

class MassagePosition extends StatelessWidget {
  final MassagePositionType positionType;
  final MassageShowType? massageShowType;
  final MassageSlide? massageSlide;
  final ToastColorScheme toastColorScheme;
  final ToastDecoration? toastDecoration;
  final Duration? animation, toStand;
  final VoidCallback onEnd;
  final double? verticalPadding;
  final Widget? child;
  final String icon;
  final String? massage, title;
  final TextStyle? massageStyle, titleStyle;
  const MassagePosition({
    super.key,
    required this.positionType,
    required this.toastColorScheme,
    required this.onEnd,
    required this.icon,
    this.massageShowType,
    this.massageSlide,
    this.child,
    this.verticalPadding,
    this.toastDecoration,
    this.animation,
    this.toStand,
    this.massage,
    this.title,
    this.massageStyle,
    this.titleStyle,
  });

  @override
  Widget build(BuildContext context) {
    return switch (positionType) {
      MassagePositionType.top => MassagePositionWidget(
        toastConfigure: ToastConfigure().copyWith(
          position: massageSlide == .left
              ? Offset(-10, 0)
              : massageSlide == .right
              ? Offset(10, 0)
              : Offset(0, -10),
          bubble: massageShowType == .boxSlide
              ? false
              : massageShowType == .bubbleSlide
              ? true
              : massageShowType == .zooming
              ? true
              : massageShowType == .fade
              ? false
              : false,

          isSlide: massageShowType == .boxSlide
              ? true
              : massageShowType == .bubbleSlide
              ? true
              : massageShowType == .zooming
              ? false
              : massageShowType == .fade
              ? false
              : false,
          animation: animation,
          toStand: toStand,
        ),

        toastColorScheme: toastColorScheme,
        verticalPadding: verticalPadding,
        toastDecoration: toastDecoration,

        onEnd: onEnd,
        massagePositionType: .top,
        icon: icon,
        massage: massage,
        massageStyle: massageStyle,
        title: title,
        titleStyle: titleStyle,
        child: child,
      ),

      MassagePositionType.center => MassagePositionWidget(
        toastConfigure: ToastConfigure().copyWith(
          position: massageSlide == .left
              ? Offset(-10, 0)
              : massageSlide == .right
              ? Offset(10, 0)
              : massageSlide == .none
              ? Offset.zero
              : Offset.zero,

          bubble: massageShowType == .boxSlide
              ? false
              : massageShowType == .bubbleSlide
              ? true
              : massageShowType == .zooming
              ? true
              : massageShowType == .fade
              ? false
              : false,

          isSlide: massageShowType == .boxSlide
              ? true
              : massageShowType == .bubbleSlide
              ? true
              : massageShowType == .zooming
              ? false
              : massageShowType == .fade
              ? false
              : false,
          animation: animation,
          toStand: toStand,
        ),

        toastColorScheme: toastColorScheme,
        toastDecoration: toastDecoration,
        verticalPadding: verticalPadding,

        onEnd: onEnd,
        massagePositionType: .center,
        icon: icon,
        massage: massage,
        massageStyle: massageStyle,
        title: title,
        titleStyle: titleStyle,
        child: child,
      ),

      MassagePositionType.bottom => MassagePositionWidget(
        toastConfigure: ToastConfigure().copyWith(
          position: massageSlide == .left
              ? Offset(-10, 0)
              : massageSlide == .right
              ? Offset(10, 0)
              : Offset(0, 10),
          bubble: massageShowType == .boxSlide
              ? false
              : massageShowType == .bubbleSlide
              ? true
              : massageShowType == .zooming
              ? true
              : massageShowType == .fade
              ? false
              : false,

          isSlide: massageShowType == .boxSlide
              ? true
              : massageShowType == .bubbleSlide
              ? true
              : massageShowType == .zooming
              ? false
              : massageShowType == .fade
              ? false
              : false,
          animation: animation,
          toStand: toStand,
        ),
        toastColorScheme: toastColorScheme,
        onEnd: onEnd,
        massagePositionType: .bottom,
        icon: icon,
        toastDecoration: toastDecoration,
        verticalPadding: verticalPadding,
        massage: massage,
        massageStyle: massageStyle,
        title: title,
        titleStyle: titleStyle,
        child: child,
      ),
    };
  }
}
