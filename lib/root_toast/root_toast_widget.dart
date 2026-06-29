import 'package:flutter/material.dart';
import 'package:flutter_toast_rana/root_toast/widget/root_helper_widget.dart';
import 'package:flutter_toast_rana/toast_type/toast_configure.dart';
import 'package:flutter_toast_rana/toast_type/toast_decoration.dart';

class RootToastWidget extends StatefulWidget {
  final Widget? toastChild;
  final ToastConfigure toastConfigure;
  final VoidCallback onEnd;
  final ToastDecoration? toastDecoration;
  const RootToastWidget({
    super.key,
    this.toastConfigure = const ToastConfigure(),
    required this.onEnd,
    this.toastDecoration,
    this.toastChild,
  });

  @override
  State<RootToastWidget> createState() => _RootToastWidget();
}

class _RootToastWidget extends State<RootToastWidget>
    with TickerProviderStateMixin {
  ///
  ///
  /// AnimationController
  late AnimationController _slideTransitionController;
  late AnimationController _sizeController;
  late AnimationController _showWidgetController;

  ///
  ///
  ///
  /// Animation
  late Animation<Offset> _slideTransition;
  late Animation<double> _size;
  late Animation<double> _borderRadius;

  late Animation<double> _showWidgetOpacity;
  late Animation<double> _widgetOpacity;

  ///
  ///
  /// ValueNotifier
  ValueNotifier<bool> _isShowWidget = ValueNotifier<bool>(false);
  ValueNotifier<double> left = ValueNotifier<double>(100);
  ValueNotifier<double> top = ValueNotifier<double>(100);

  ///
  ///
  ///
  /// initState setup
  @override
  void initState() {
    super.initState();

    ///
    ///
    /// AnimationController setup
    _slideTransitionController = AnimationController(
      vsync: this,
      duration: widget.toastConfigure.animation,
    );
    _sizeController = AnimationController(
      vsync: this,
      duration: widget.toastConfigure.animation,
    );
    _showWidgetController = AnimationController(
      vsync: this,
      duration: widget.toastConfigure.animation,
    );

    ///
    ///
    /// Animation and Tween setup
    _slideTransition =
        Tween<Offset>(
          begin: widget.toastConfigure.isSlide
              ? widget.toastConfigure.position
              : Offset.zero,
          end: Offset.zero,
        ).animate(
          CurvedAnimation(
            parent: _slideTransitionController,
            curve: Curves.linearToEaseOut,
          ),
        );

    _size = Tween<double>(
      begin: widget.toastConfigure.bubble ? 0 : 1,
      end: 1,
    ).animate(_sizeController);
    _borderRadius = Tween<double>(begin: 1, end: 0).animate(_sizeController);
    _widgetOpacity = Tween<double>(
      begin: (!widget.toastConfigure.bubble && !widget.toastConfigure.isSlide)
          ? 0
          : 1,
      end: 1,
    ).animate(_slideTransitionController);
    _showWidgetOpacity = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(_showWidgetController);

    _animationStart();
  }

  Future<void> _animationStart() async {
    if (!mounted) return;
    await _slideTransitionController.forward();
    if (!mounted) return;
    await _sizeController.forward();
    if (!mounted) return;
    _isShowWidget.value = true;
    if (!mounted) return;
    await _showWidgetController.forward();
    if (!mounted) return;
    await Future.delayed(widget.toastConfigure.toStand);
    if (!mounted) return;
    _animationEnd();
  }

  Future<void> _animationEnd() async {
    if (!mounted) return;
    _showWidgetController.reverse();
    if (!mounted) return;
    _sizeController.reverse();
    if (!mounted) return;
    _isShowWidget.value = false;
    if (!mounted) return;
    await Future.delayed(Duration(milliseconds: 300));
    if (!mounted) return;
    await _slideTransitionController.reverse();
    if (!mounted) return;
    await Future.delayed(Duration(milliseconds: 200));
    if (!mounted) return;
    widget.onEnd();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Material(
      color: Colors.transparent,
      child: AnimatedBuilder(
        animation: Listenable.merge([
          _showWidgetController,
          _slideTransitionController,
          _sizeController,
        ]),
        builder: (context, childS) {
          return ListenableBuilder(
            listenable: Listenable.merge([_isShowWidget, top, left]),
            builder: (context, child) {
              return child!;
            },
            child: SlideTransition(
              position: _slideTransition,
              child: Opacity(
                opacity: _widgetOpacity.value,
                child: RootHelperWidget(
                  toastDecoration: widget.toastDecoration ?? ToastDecoration(),
                  size: size,
                  width: widget.toastConfigure.width,
                  height: widget.toastConfigure.height,
                  sizeTween: _size.value,
                  opacityTween: _showWidgetOpacity.value,
                  isSlide: widget.toastConfigure.isSlide,
                  bubble: widget.toastConfigure.bubble,
                  widgetShow: _isShowWidget.value,
                  borderRadiusTween: _borderRadius.value,
                  borderRadius: widget.toastConfigure.borderRadius,
                  child: widget.toastChild,
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  ///
  ///
  /// Disposing controller
  @override
  void dispose() {
    _showWidgetController.dispose();
    _sizeController.dispose();
    _slideTransitionController.dispose();
    _isShowWidget.dispose();
    top.dispose();
    left.dispose();
    super.dispose();
  }
}
