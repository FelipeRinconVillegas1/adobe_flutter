import 'dart:math' as math;
import 'package:flutter/widgets.dart';
import 'icon_cart_animation_options.dart';

/// AnimationIconCart is a widget that can be used to animate any widget.
/// It can be used to animate any widget by wrapping the widget with AnimationIconCart.
/// The animation can be controlled by setting the value of the runAnimation parameter.
class AnimationIconCart extends StatefulWidget {
  /// animate widget
  final Widget child;

  /// constant for animation config
  final IconCartAnimationOptions animationConfig;

  /// animate duration
  final Duration? duration;

  /// true: start false:stop, default is false
  final bool runAnimation;

  const AnimationIconCart({
    Key? key,
    required this.child,
    required this.animationConfig,
    this.duration,
    this.runAnimation = false,
  }) : super(key: key);

  @override
  AnimationIconCartState createState() => AnimationIconCartState();
}

class AnimationIconCartState extends State<AnimationIconCart> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _rotateAnimation;

  @override
  void initState() {
    super.initState();

    // Initialize the AnimationController with the duration provided by widget.duration,
    // or with the default duration shakeConstant.duration if widget.duration is null.
    _controller = AnimationController(vsync: this, duration: widget.duration ?? widget.animationConfig.duration);

    // Create the rotation animation (_rotateAnimation) using TweenSequence.
    // Multiple TweenSequenceItems are generated to create a sequence of rotation animations
    // based on the angles specified in shakeConstant.rotate.
    _rotateAnimation = TweenSequence(
      List.generate(widget.animationConfig.rotate.length - 1, (index) {
        final beginRotate = widget.animationConfig.rotate[index];
        final endRotate = widget.animationConfig.rotate[index + 1];

        // Create the TweenSequenceItem with the rotation Tween (degrees to radians) and the weight
        // provided by shakeConstant.interval.
        return TweenSequenceItem(
            tween: Tween(begin: math.pi / 180 * beginRotate, end: math.pi / 180 * endRotate),
            weight: widget.animationConfig.interval);
      }),
    ).animate(_controller);

    // If is true, repeat the animation in a loop.
    if (widget.runAnimation) {
      _controller.repeat(reverse: true);
    }
  }

  @override
  void didUpdateWidget(covariant AnimationIconCart oldWidget) {
    super.didUpdateWidget(oldWidget);

    // Check if the value of autoPlay has changed from the previous widget to the current widget.
    // If there's a change in the autoPlay value, handle the animation accordingly.
    if (oldWidget.runAnimation != widget.runAnimation) {
      // If autoPlay is true, repeat the animation in a loop by calling repeat() on the AnimationController.
      // If autoPlay is false, reset the animation to its initial state by calling reset() on the AnimationController.
      if (widget.runAnimation) {
        _controller.repeat();
      } else {
        _controller.reset();
      }
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (BuildContext context, Widget? child) {
        return Transform(
          alignment: Alignment.center,
          transform: Matrix4.identity()..rotateZ(_rotateAnimation.value),
          child: child,
        );
      },
      child: widget.child,
    );
  }
}
