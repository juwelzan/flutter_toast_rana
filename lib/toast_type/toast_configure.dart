import 'package:flutter/material.dart';

class ToastConfigure {
  final bool isSlide, bubble;

  final Offset position;
  final Duration animation, toStand;
  final double height, borderRadius;
  final double? width;

  const ToastConfigure({
    this.isSlide = true,
    this.position = Offset.zero,
    this.height = 80,
    this.width,
    this.bubble = true,

    this.borderRadius = 10,
    this.animation = const Duration(milliseconds: 400),
    this.toStand = const Duration(seconds: 4),
  });

  ToastConfigure copyWith({
    bool? isSlide,
    bool? bubble,
    Offset? position,
    double? height,
    double? width,
    double? borderRadius,
    Duration? animation,
    Duration? toStand,
  }) {
    return ToastConfigure(
      animation: animation ?? this.animation,
      borderRadius: borderRadius ?? this.borderRadius,
      bubble: bubble ?? this.bubble,
      height: height ?? this.height,
      width: width ?? this.width,
      isSlide: isSlide ?? this.isSlide,
      position: position ?? this.position,
      toStand: toStand ?? this.toStand,
    );
  }
}
