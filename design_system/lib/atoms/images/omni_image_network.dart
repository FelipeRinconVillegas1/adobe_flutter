import 'package:cached_network_image/cached_network_image.dart';
import 'package:design_system/atoms/data_models/omni_image_network_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OmniImageNetwork extends StatelessWidget {
  final OmniImageNetworkData data;

  const OmniImageNetwork({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Build the OmniImage using a private method
    return _buildOmniImage();
  }

  Widget _buildOmniImage() {
    // Check if the URL is not null and not empty
    if (data.url != null && data.url!.isNotEmpty) {
      // Check if the URL ends with ".svg"
      if (data.url!.endsWith('.svg')) {
        // If it's an SVG file, use SvgPicture.network
        return SvgPicture.network(
          data.url!,
          width: data.widthImage,
          height: data.heightImage,
          fit: data.fit ?? BoxFit.contain,
        );
      } else {
        // If it's not an SVG file, use CachedNetworkImage
        return CachedNetworkImage(
          imageUrl: data.url!,
          placeholder: (context, url) => data.placeholder,
          errorWidget: (context, url, error) => data.errorWidget,
          width: data.widthImage,
          height: data.heightImage,
          fit: data.fit,
        );
      }
    } else {
      // If the URL is null or empty, display the placeholder
      return data.placeholder;
    }
  }
}
