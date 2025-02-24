import 'dart:typed_data';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:screenshot/screenshot.dart';
import 'add_to_cart_animation_options.dart';
import 'package:flutter/material.dart';
export 'add_to_cart_animation_options.dart';

extension GlobalKeyExt on GlobalKey {
  /// Get global paint bounds of the widget from the key
  Rect? get globalPaintBounds {
    final renderObject = currentContext?.findRenderObject();
    var translation = renderObject?.getTransformTo(null).getTranslation();
    if (translation != null) {
      return renderObject!.paintBounds.shift(Offset(translation.x, translation.y));
    } else {
      return null;
    }
  }
}

///Provider for the list animation model
final _positionedAnimationProvider = StateProvider<List<_PositionedAnimationModel>>((ref) {
  return [];
});

class _PositionedAnimationModel {
  bool showAnimation = false;
  bool animationActive = false;

  /// The source point of the Widget
  Offset widgetSourcePoint = Offset.zero;
  Offset widgetDestPoint = Offset.zero;
  Size widgetSourceSize = Size.zero;
  Size widgetDestSize = Size.zero;
  double opacity = 0.85;
  late Container container;
  Duration duration = Duration.zero;
  Curve curve = Curves.easeInSine;

  /// Constructor
  _PositionedAnimationModel({
    required this.showAnimation,
    required this.animationActive,
    required this.widgetSourcePoint,
    required this.widgetDestPoint,
    required this.widgetSourceSize,
    required this.widgetDestSize,
    required this.opacity,
    required this.container,
    required this.duration,
    required this.curve,
  });

  /// Create a new instance to factory
  _PositionedAnimationModel.factory();

  /// Copy with
  _PositionedAnimationModel copyWith({
    bool? showAnimation,
    bool? animationActive,
    Offset? widgetSourcePoint,
    Offset? widgetDestPoint,
    Size? widgetSourceSize,
    Size? widgetDestSize,
    double? opacity,
    Container? container,
    Duration? duration,
    Curve? curve,
  }) {
    return _PositionedAnimationModel(
      showAnimation: showAnimation ?? this.showAnimation,
      animationActive: animationActive ?? this.animationActive,
      widgetSourcePoint: widgetSourcePoint ?? this.widgetSourcePoint,
      widgetDestPoint: widgetDestPoint ?? this.widgetDestPoint,
      widgetSourceSize: widgetSourceSize ?? this.widgetSourceSize,
      widgetDestSize: widgetDestSize ?? this.widgetDestSize,
      opacity: opacity ?? this.opacity,
      container: container ?? this.container,
      duration: duration ?? this.duration,
      curve: curve ?? this.curve,
    );
  }
}

/// An add to cart animation which provide you an animation by sliding the product to cart in the Flutter app
class AddToCartAnimation extends ConsumerStatefulWidget {
  final Widget child;

  /// The Global Key of the [AddToCartIcon] element. We need it because we need to know where is the cart icon is
  /// located in the screen. Based on the location, we are dragging given widget to the cart.
  final GlobalKey cartKey;

  /// you can receive [runAddToCartAnimation] animation method on [createAddToCartAnimation].
  /// [runAddToCartAnimation] animation method runs the add to cart animation based on the given parameters.
  /// Add to cart animation drags the given widget to the cart based on their location via global keys
  final Function(Future<void> Function(GlobalKey)) createAddToCartAnimation;

  /// What Should the given widget's height while dragging to the cart
  final double height;

  /// What Should the given widget's width while dragging to the cart
  final double width;

  /// What Should the given widget's opacity while dragging to the cart
  final double opacity;

  /// The animation options while given widget sliding to cart
  final AddToCartAnimationOptions addToCartAnimationsOption;

  const AddToCartAnimation({
    Key? key,
    required this.child,
    required this.cartKey,
    required this.createAddToCartAnimation,
    this.height = 30,
    this.width = 30,
    this.opacity = 0.85,
    this.addToCartAnimationsOption = const AddToCartAnimationOptions(),
  }) : super(key: key);

  @override
  AddToCartAnimationState createState() => AddToCartAnimationState();
}

class AddToCartAnimationState extends ConsumerState<AddToCartAnimation> {
  @override
  void initState() {
    widget.createAddToCartAnimation(runAddToCartAnimation);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        widget.child,
        Consumer(builder: (context, ref, child) {
          final animationModels = ref.watch(_positionedAnimationProvider);
          return Positioned.fill(
              child: Stack(
            children: animationModels
                .map(
                  (animationModel) => animationModel.showAnimation
                      ? AnimatedPositioned(
                          top: animationModel.animationActive
                              ? animationModel.widgetDestPoint.dx + 35
                              : animationModel.widgetSourcePoint.dx,
                          left: animationModel.animationActive
                              ? animationModel.widgetDestPoint.dy + 50
                              : animationModel.widgetSourcePoint.dy,
                          height: animationModel.animationActive
                              ? animationModel.widgetDestSize.height - 20
                              : animationModel.widgetSourceSize.height - 10,
                          width: animationModel.animationActive
                              ? animationModel.widgetDestSize.width - 40
                              : animationModel.widgetSourceSize.width - 20,
                          duration: animationModel.duration,
                          curve: animationModel.curve,
                          child: Opacity(
                            opacity: animationModel.opacity,
                            child: animationModel.container,
                          ),
                        )
                      : const SizedBox.shrink(),
                )
                .toList(),
          ));
        }),
      ],
    );
  }

  /// Runs the add to cart animation based on the given parameters.
  /// Add to cart animation drags the given widget to the cart based on their location via global keys.
  Future<void> runAddToCartAnimation(GlobalKey widgetKey) async {
    _PositionedAnimationModel animationModel = _PositionedAnimationModel.factory()..opacity = widget.opacity;

    animationModel.widgetSourcePoint = Offset(widgetKey.globalPaintBounds!.top, widgetKey.globalPaintBounds!.left);

    var startingHeight = widgetKey.currentContext!.size!.height;
    animationModel.widgetDestPoint =
        Offset(widgetKey.globalPaintBounds!.top - (startingHeight + widget.height), widgetKey.globalPaintBounds!.left);

    animationModel.widgetSourceSize =
        Size(widgetKey.currentContext!.size!.width, widgetKey.currentContext!.size!.height);

    animationModel.widgetDestSize = Size(
        widgetKey.currentContext!.size!.width + widget.width, widgetKey.currentContext!.size!.height + widget.height);

    ref.read(_positionedAnimationProvider.notifier).update((state) => [...state, animationModel]);

    // to save image bytes of widget
    Uint8List? bytes;
    ScreenshotController screenshotController = ScreenshotController();

    // Convert the given widget to image bytes
    bytes = await screenshotController.captureFromWidget(Container(
      color: Colors.transparent,
      child: Material(
        child: MediaQuery(
          data: MediaQuery.of(context).copyWith(),
          child: Container(
            // .child is very important here. Don't remove it. It's the child of the [Container] which is the widget
            // that will be dragged to the cart icon location, if removed the animation, you will give an error because
            // duplicate widgetKey.
            child: (widgetKey.currentWidget! as Container).child,
          ),
        ),
      ),
    ));

    // Set the image bytes to the animation model container.
    animationModel.container = Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: MemoryImage(bytes),
          fit: BoxFit.fitWidth,
        ),
      ),
    );

    animationModel.showAnimation = true;
    ref.read(_positionedAnimationProvider.notifier).update((state) => [...state]);
    await Future.delayed(const Duration(milliseconds: 75));

    animationModel.animationActive = true;
    ref.read(_positionedAnimationProvider.notifier).update((state) => [...state]);

    await Future.delayed(animationModel.duration);
    // Drag to cart animation
    animationModel.curve = widget.addToCartAnimationsOption.curve;
    animationModel.duration = widget.addToCartAnimationsOption.duration; // this is for add to button mode

    // We need to change the image source point and size because we need to drag the image to the cart icon location
    animationModel.widgetDestPoint =
        Offset(widget.cartKey.globalPaintBounds!.top, widget.cartKey.globalPaintBounds!.left);

    animationModel.widgetDestSize =
        Size(widget.cartKey.currentContext!.size!.width, widget.cartKey.currentContext!.size!.height);

    ref.read(_positionedAnimationProvider.notifier).update((state) => [...state]);

    // We need to wait for the animation to finish
    await Future.delayed(animationModel.duration);
    animationModel.showAnimation = false;
    animationModel.animationActive = false;

    ref.read(_positionedAnimationProvider.notifier).update((state) => [...state]);

    return;
  }
}
