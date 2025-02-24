part of 'image_slider_small.dart';

class ImageSliderFullScrenn extends StatefulWidget {
  const ImageSliderFullScrenn({
    super.key,
    required this.imageData,
    this.initialPage = 0,
  });

  final ImageSliderData imageData;
  final int initialPage;

  @override
  State<ImageSliderFullScrenn> createState() => _ImageSliderFullScrennState();
}

class _ImageSliderFullScrennState extends State<ImageSliderFullScrenn> {
  late int _currentIndex;
  late PageController _pageController;

  @override
  void initState() {
    _currentIndex = widget.initialPage;
    _pageController = PageController(initialPage: widget.initialPage);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final data = widget.imageData.fullScreen();
    return Container(
      height: data.height?.h ?? 100.h,
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 20.h),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: PageView.builder(
              physics: const ClampingScrollPhysics(),
              controller: _pageController,
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
                            url: url,
                          ),
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
    );
  }
}
