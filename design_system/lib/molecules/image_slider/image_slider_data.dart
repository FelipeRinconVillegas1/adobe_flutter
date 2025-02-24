part of 'image_slider_small.dart';

class ImageSliderData {
  ImageSliderData({
    required this.images,
    this.mainImage,
    this.width,
    this.height,
    this.backgroundColor,
    this.isFavorite = false,
    this.onFavoriteTap,
    this.onImageTap,
    this.onPageChanged,
  }) {
    if (images.isEmpty) {
      images.add(
        ImageModel(
          url: mainImage,
          position: 1,
          disbled: false,
        ),
      );
    }
    images.sort((a, b) => a.position.compareTo(b.position));
  }
  final List<ImageModel> images;
  final String? mainImage;
  final bool isFavorite;
  final VoidCallback? onFavoriteTap;
  final VoidCallback? onImageTap;
  final Function(int index)? onPageChanged;
  final double? width;
  final double? height;
  final Color? backgroundColor;

  ImageSliderData copyWith({
    List<ImageModel>? images,
    String? mainImage,
    double? width,
    double? height,
    Color? backgroundColor,
    bool? isFavorite,
    VoidCallback? onFavoriteTap,
    VoidCallback? onImageTap,
    Function(int index)? onPageChanged,
  }) {
    return ImageSliderData(
      images: images ?? this.images,
      mainImage: mainImage ?? this.mainImage,
      width: width ?? this.width,
      height: height ?? this.height,
      backgroundColor: backgroundColor ?? this.backgroundColor,
      isFavorite: isFavorite ?? this.isFavorite,
      onFavoriteTap: onFavoriteTap ?? this.onFavoriteTap,
      onPageChanged: onPageChanged ?? this.onPageChanged,
      onImageTap: onImageTap ?? this.onImageTap,
    );
  }

  ImageSliderData smallBanner() {
    return ImageSliderData(
      images: images,
      mainImage: mainImage,
      width: double.infinity,
      height: height?.h ?? 100.h,
      backgroundColor: ColorsOmni.white,
      isFavorite: isFavorite,
      onFavoriteTap: onFavoriteTap,
      onPageChanged: onPageChanged,
      onImageTap: onImageTap,
    );
  }

  ImageSliderData fullScreen() {
    return ImageSliderData(
      images: images,
      mainImage: mainImage,
      width: double.infinity,
      height: height?.h ?? 300.h,
      backgroundColor: ColorsOmni.white,
      isFavorite: isFavorite,
      onFavoriteTap: onFavoriteTap,
      onPageChanged: onPageChanged,
      onImageTap: onImageTap,
    );
  }
}

class ImageModel {
  final String? url;
  final String? label;
  final int position;
  final bool disbled;

  ImageModel({
    this.url,
    this.label,
    required this.position,
    required this.disbled,
  });

  ImageModel copyWith({
    String? url,
    String? label,
    int? position,
    bool? disbled,
  }) {
    return ImageModel(
      url: url ?? this.url,
      label: label ?? this.label,
      position: position ?? this.position,
      disbled: disbled ?? this.disbled,
    );
  }

  factory ImageModel.fromMediaGallery(ProductsMediaGallery mediaGallery) => ImageModel(
      /*  url: mediaGallery.url,*/
        label: mediaGallery.label,
        position: mediaGallery.position,
        disbled: mediaGallery.disabled,
      );
}
