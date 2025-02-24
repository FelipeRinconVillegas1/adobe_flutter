import 'package:design_system/atoms/data_models/omni_image_network_data.dart';
import 'package:design_system/atoms/images/omni_image_network.dart';
import 'package:design_system/widgets_omni.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:core/domain/entity/products.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

part 'image_slider_data.dart';
part 'image_slider_fullscreen.dart';

class ImageSliderSmall extends StatefulWidget {
  const ImageSliderSmall({super.key, required this.imageData});

  final ImageSliderData imageData;

  @override
  State<ImageSliderSmall> createState() => _ImageSliderSmallState();
}

class _ImageSliderSmallState extends State<ImageSliderSmall> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final data = widget.imageData.smallBanner();
    return Stack(
      children: [
        Container(
          color: data.backgroundColor,
          height: data.height?.h ?? 100.h,
          width: double.infinity,
          padding: EdgeInsets.symmetric(vertical: 20.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: PageView.builder(
                  physics: const ClampingScrollPhysics(),
                  onPageChanged: (index) {
                    data.onPageChanged?.call(index);
                    _currentIndex = index;
                    setState(() {});
                  },
                  itemCount: widget.imageData.images.length,
                  itemBuilder: (context, index) {
                    final url = data.images[index].url;
                    return InkWell(
                      onTap: data.onImageTap,
                      child: url != null
                          ? OmniImageNetwork(
                              data: OmniImageNetworkData(
                                  widthImage: data.width,
                                  heightImage: data.height,
                                  placeholder: const SizedBox.shrink(),
                                  errorWidget: const SizedBox.shrink(),
                                  url: url),
                            )
                          : const SizedBox.shrink(),
                    );
                  },
                ),
              ),
              SizedBox(height: 10.h),
              DotsIndicator(
                dotsCount: data.images.length,
                position: _currentIndex,
                decorator: const DotsDecorator(
                  color: ColorsOmni.whiteSmoke,
                  activeColor: ColorsOmni.primaryRed,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
