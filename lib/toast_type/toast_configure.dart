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
    this.height = 50,
    this.width,
    this.bubble = true,

    this.borderRadius = 10,
    this.animation = const Duration(milliseconds: 300),
    this.toStand = const Duration(seconds: 1),
  });
}
