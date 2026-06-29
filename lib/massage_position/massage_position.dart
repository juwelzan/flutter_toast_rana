import 'package:flutter/material.dart';
import 'package:flutter_toast_rana/core/theme/toast_theme.dart';
import 'package:flutter_toast_rana/massage_position/widget/massage_position_widget.dart';
import 'package:flutter_toast_rana/toast_type/toast_configure.dart';
import 'package:flutter_toast_rana/toast_type/toast_enum_type.dart';

class MassagePosition extends StatelessWidget {
  final MassagePositionType positionType;
  final MassageShowType? massageShowType;
  final MassageSlide? massageSlide;
  final ToastColorScheme toastColorScheme;
  final VoidCallback onEnd;
  final String icon;
  const MassagePosition({
    super.key,
    required this.positionType,
    required this.toastColorScheme,
    required this.onEnd,
    required this.icon,
    this.massageShowType,
    this.massageSlide,
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
        ),

        toastColorScheme: toastColorScheme,
        onEnd: onEnd,
        massagePositionType: .top,
        icon: icon,
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
        ),

        toastColorScheme: toastColorScheme,

        onEnd: onEnd,
        massagePositionType: .center,
        icon: icon,
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
        ),
        toastColorScheme: toastColorScheme,
        onEnd: onEnd,
        massagePositionType: .bottom,
        icon: icon,
      ),
    };
  }
}
