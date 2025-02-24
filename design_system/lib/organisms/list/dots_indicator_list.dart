import 'package:carousel_slider/carousel_slider.dart';
import 'package:design_system/foundations/colors.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DotsIndicatorList extends StatefulWidget {
  const DotsIndicatorList({
    super.key,
    required this.itemCount,
    required this.itemBuilder,
    this.showDots = true,
    this.style,
    this.aspectRatio = 16 / 10,
    this.viewportFraction = 0.8,
  });

  final int itemCount;

  final Widget Function(BuildContext, int, int)? itemBuilder;

  final DotsIndicatorStyle? style;

  final bool showDots;

  final double aspectRatio;

  final double viewportFraction;

  @override
  State<DotsIndicatorList> createState() => _DotsIndicatorListState();
}

class _DotsIndicatorListState extends State<DotsIndicatorList> {
  DotsIndicatorStyle get _style => widget.style ?? DotsIndicatorStyle.defaultStyle();

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: _style.padding,
          child: CarouselSlider.builder(
            options: CarouselOptions(
              enableInfiniteScroll: false,
              reverse: false,
              aspectRatio: widget.aspectRatio,
              viewportFraction: widget.viewportFraction,
              padEnds: _style.padEnds,
              autoPlay: false,
              enlargeCenterPage: false,
              scrollDirection: Axis.horizontal,
              onPageChanged: (index, reason) {
                setState(() {
                  _currentIndex = index;
                });
              },
            ),
            itemCount: widget.itemCount,
            itemBuilder: widget.itemBuilder,
          ),
        ),
        if (widget.showDots && widget.itemCount > 1)
          DotsIndicator(
            dotsCount: widget.itemCount,
            position: _currentIndex,
            decorator: DotsDecorator(
              activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(3),
              ),
              activeColor: _style.colorActiveDot,
              color: _style.colorDot,
              activeSize: _style.activeSizedDot,
              spacing: const EdgeInsets.symmetric(horizontal: 4),
              size: _style.sizeDot,
            ),
          )
      ],
    );
  }
}

class DotsIndicatorStyle {
  final EdgeInsets padding;
  final Size activeSizedDot;
  final Size sizeDot;
  final Color colorDot;
  final Color colorActiveDot;
  final bool padEnds;

  const DotsIndicatorStyle(
      {required this.padding,
      required this.activeSizedDot,
      required this.sizeDot,
      required this.colorDot,
      required this.colorActiveDot,
      required this.padEnds});

  factory DotsIndicatorStyle.defaultStyle() {
    return DotsIndicatorStyle(
      padding: EdgeInsets.only(bottom: 5.h),
      activeSizedDot: const Size(24, 5),
      sizeDot: const Size(10, 5),
      colorDot: ColorsOmni.redF2ABB2,
      colorActiveDot: ColorsOmni.redFF1335,
      padEnds: false,
    );
  }

  factory DotsIndicatorStyle.productDetailsStyle() {
    return DotsIndicatorStyle(
      padding: const EdgeInsets.only(bottom: 10),
      activeSizedDot: const Size(30, 5),
      sizeDot: const Size(5, 5),
      colorDot: ColorsOmni.black161615.withOpacity(0.49),
      colorActiveDot: ColorsOmni.black161615,
      padEnds: true,
    );
  }
}
