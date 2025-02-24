abstract class IconCartAnimationOptions {
  final double interval;

  final List<double> rotate;

  final Duration duration;

  IconCartAnimationOptions(
      {required this.interval, required this.rotate, this.duration = const Duration(milliseconds: 100)})
      : assert(rotate.isEmpty || rotate.length == 1 || rotate.length > 1);
}

class CartAnimationsOptionsDefault implements IconCartAnimationOptions {
  @override
  double get interval => 2;

  @override
  List<double> get rotate => [0, 5, 10, 0, -5, -10, 0];

  @override
  Duration get duration => const Duration(milliseconds: 100);
}
