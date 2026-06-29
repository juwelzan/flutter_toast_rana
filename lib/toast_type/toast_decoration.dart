import 'package:flutter/material.dart';

class ToastDecoration {
  final BlendMode? blendMode;
  final Gradient? gradient;
  final double borderRadius;
  final EdgeInsetsGeometry? padding, margin;
  final BoxBorder? border;
  final DecorationImage? decorationImage;
  final Color? color;
  final List<BoxShadow>? boxShadow;

  ToastDecoration({
    this.blendMode,
    this.gradient,
    this.borderRadius = 20,
    this.border,
    this.decorationImage,
    this.color,
    this.boxShadow,
    this.padding,
    this.margin,
  });
}
