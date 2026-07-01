import 'package:flutter_toast_rana/core/path/path.dart';

class ToastConfigure {
  final bool isSlide, bubble;
  final Curve curves;
  final Offset position;
  final Duration animation, toStand;

  const ToastConfigure({
    this.isSlide = true,
    this.position = Offset.zero,

    this.bubble = true,

    this.animation = const Duration(milliseconds: 400),
    this.toStand = const Duration(seconds: 4),
    this.curves = Curves.linear,
  });

  ToastConfigure copyWith({
    bool? isSlide,
    bool? bubble,
    Offset? position,
    Curve? curves,
    Duration? animation,
    Duration? toStand,
  }) {
    return ToastConfigure(
      animation: animation ?? this.animation,
      curves: curves ?? this.curves,
      bubble: bubble ?? this.bubble,

      isSlide: isSlide ?? this.isSlide,
      position: position ?? this.position,
      toStand: toStand ?? this.toStand,
    );
  }
}
