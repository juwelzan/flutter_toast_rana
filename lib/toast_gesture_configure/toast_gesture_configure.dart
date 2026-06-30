import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_toast_rana/root_toast/root_toast_widget.dart';
import 'package:flutter_toast_rana/toast_type/toast_configure.dart';
import 'package:flutter_toast_rana/toast_type/toast_decoration.dart';
import 'package:flutter_toast_rana/toast_type/toast_enum_type.dart';

class ToastGestureConfigure extends StatefulWidget {
  final VoidCallback onEnd;
  final Widget toastChild;
  final double verticalPadding;

  final MassagePositionType massagePositionType;
  final ToastConfigure toastConfigure;
  final ToastDecoration toastDecoration;
  const ToastGestureConfigure({
    super.key,
    required this.onEnd,
    required this.toastConfigure,
    this.massagePositionType = .top,
    this.verticalPadding = 60,
    required this.toastDecoration,
    required this.toastChild,
  });

  @override
  State<ToastGestureConfigure> createState() => _ToastGestureConfigureState();
}

class _ToastGestureConfigureState extends State<ToastGestureConfigure>
    with TickerProviderStateMixin {
  late AnimationController horizontalController;
  late AnimationController verticalController;
  late AnimationController userSlideController;
  ValueNotifier<double> l = ValueNotifier<double>(10);
  late ValueNotifier<double> t;
  late ValueNotifier<double> b;
  ValueNotifier<double> r = ValueNotifier<double>(10);

  ValueNotifier<Axis>? axis;
  bool hapticFeedback = false;

  @override
  void initState() {
    super.initState();
    t = ValueNotifier<double>(widget.verticalPadding + 20);
    b = ValueNotifier<double>(widget.verticalPadding + 20);
    horizontalController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 300),
    );
    verticalController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 300),
    );
    userSlideController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 2200),
    );
  }

  void onHorizontalDragEnd(double targetL, double targetR) {
    final startL = l.value;
    final startR = r.value;
    if (!mounted) return;
    final animation = CurvedAnimation(
      parent: horizontalController,
      curve: Curves.easeOutCubic,
    );
    if (!mounted) return;
    horizontalController
      ..repeat()
      ..addListener(() {
        l.value = Tween<double>(
          begin: startL,
          end: targetL,
        ).evaluate(animation);
        r.value = Tween<double>(
          begin: startR,
          end: targetR,
        ).evaluate(animation);
      });
    if (!mounted) return;
    horizontalController.forward();
  }

  void onVerticalDragEnd(double targetT) {
    final startT = widget.massagePositionType == .bottom ? b.value : t.value;

    if (!mounted) return;
    final animation = CurvedAnimation(
      parent: verticalController,
      curve: Curves.easeOutCubic,
    );
    if (!mounted) return;
    verticalController
      ..repeat()
      ..addListener(() {
        widget.massagePositionType == .bottom
            ? b.value = Tween<double>(
                begin: startT,
                end: targetT,
              ).evaluate(animation)
            : t.value = Tween<double>(
                begin: startT,
                end: targetT,
              ).evaluate(animation);
      });
    if (!mounted) return;
    verticalController.forward();
  }

  void onUserSlide(double targetL, double targetR) async {
    final startL = l.value;
    final startR = r.value;
    if (!mounted) return;
    final animation = CurvedAnimation(
      parent: userSlideController,
      curve: Curves.elasticOut,
    );
    if (!mounted) return;
    userSlideController
      ..repeat()
      ..addListener(() {
        l.value = Tween<double>(
          begin: startL,
          end: targetL,
        ).evaluate(animation);
        r.value = Tween<double>(
          begin: startR,
          end: targetR,
        ).evaluate(animation);
      });

    if (!mounted) return;
    await userSlideController.forward();
    if (!mounted) return;
    widget.onEnd();
    debugPrint("onEnd Call");
  }

  void onUserSlideTop(double targetT) async {
    final startT = widget.massagePositionType == .bottom ? b.value : t.value;

    if (!mounted) return;
    final animation = CurvedAnimation(
      parent: userSlideController,
      curve: Curves.elasticOut,
    );
    if (!mounted) return;
    userSlideController
      ..repeat()
      ..addListener(() {
        widget.massagePositionType == .bottom
            ? b.value = Tween<double>(
                begin: startT,
                end: targetT,
              ).evaluate(animation)
            : t.value = Tween<double>(
                begin: startT,
                end: targetT,
              ).evaluate(animation);
      });

    if (!mounted) return;
    await userSlideController.forward();
    if (!mounted) return;
    widget.onEnd();

    widget.onEnd();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return AnimatedBuilder(
      animation: Listenable.merge([verticalController, horizontalController]),
      builder: (context, child) {
        return ListenableBuilder(
          listenable: Listenable.merge([t, l, b, axis, r]),
          builder: (context, child) {
            return Stack(
              children: [
                Positioned(
                  left: l.value,
                  top: widget.massagePositionType == .top
                      ? t.value
                      : widget.massagePositionType == .center
                      ? 0
                      : null,
                  right: r.value,
                  bottom: widget.massagePositionType == .bottom
                      ? b.value
                      : widget.massagePositionType == .center
                      ? 0
                      : null,
                  child: GestureDetector(
                    onHorizontalDragStart: (details) {
                      hapticFeedback = true;
                    },
                    onHorizontalDragUpdate: (details) async {
                      l.value += details.delta.dx;
                      r.value -= details.delta.dx;

                      if (l.value.abs() > (size.width) / 1.7 &&
                          hapticFeedback) {
                        hapticFeedback = false;
                        await HapticFeedback.lightImpact();
                      }
                    },

                    onHorizontalDragEnd: (details) {
                      if (l.value.abs() < (size.width / 1.8)) {
                        onHorizontalDragEnd(10, 10);
                      } else {
                        if (l.value > 0) {
                          onUserSlide((size.width + 220), -(size.width + 200));
                        } else if (l.value < 0) {
                          onUserSlide(-(size.width + 200), (size.width + 220));
                        }
                      }
                    },
                    onVerticalDragStart: (details) {
                      hapticFeedback = true;
                    },
                    onVerticalDragUpdate: (details) async {
                      if (widget.massagePositionType == .bottom) {
                        b.value -= details.delta.dy;
                        debugPrint("${b.value}");
                        b.value = b.value.clamp(
                          -500,
                          widget.verticalPadding + 20,
                        );
                      }
                      if (widget.massagePositionType == .top) {
                        t.value += details.delta.dy;
                        t.value = t.value.clamp(
                          -500,
                          widget.verticalPadding + 20,
                        );
                      }

                      if (widget.massagePositionType == .bottom) {
                        if (b.value.abs() < widget.verticalPadding - 20 &&
                            hapticFeedback) {
                          hapticFeedback = false;
                          await HapticFeedback.lightImpact();
                        }
                      }
                      if (widget.massagePositionType == .top) {
                        if (t.value.abs() < 15 && hapticFeedback) {
                          hapticFeedback = false;
                          await HapticFeedback.lightImpact();
                        }
                      }
                    },
                    onVerticalDragEnd: (details) {
                      if (widget.massagePositionType == .bottom) {
                        if (b.value >
                            widget.verticalPadding -
                                (widget.verticalPadding / 1.2)) {
                          onVerticalDragEnd(widget.verticalPadding + 20);
                        } else {
                          onUserSlideTop(-300);
                        }
                      }
                      if (widget.massagePositionType == .top) {
                        if (t.value >
                            widget.verticalPadding -
                                (widget.verticalPadding / 1.2)) {
                          onVerticalDragEnd(widget.verticalPadding + 20);
                        } else {
                          onUserSlideTop(-300);
                        }
                      }
                    },

                    child: child,
                  ),
                ),
              ],
            );
          },
          child: Column(
            mainAxisAlignment: .center,
            crossAxisAlignment: .center,
            children: [
              SizedBox(
                height: widget.toastDecoration.height + 10,

                width: widget.toastDecoration.width ?? double.infinity,
                child: Center(
                  child: RootToastWidget(
                    onEnd: () {
                      if (!mounted) return;

                      widget.onEnd();
                    },
                    toastConfigure: widget.toastConfigure,
                    toastDecoration: widget.toastDecoration,
                    toastChild: widget.toastChild,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    verticalController.dispose();
    userSlideController.dispose();
    horizontalController.dispose();
    l.dispose();
    t.dispose();
    b.dispose();
    r.dispose();
    axis?.dispose();
    super.dispose();
  }
}
