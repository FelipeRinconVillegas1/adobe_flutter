import 'package:flutter/cupertino.dart';

///This clipper is used to give a padding to the clip area for shadow for only sides given in padding
/// Clips the given object by its size.
/// The clip area can optionally be enlarged by a given padding.
class ClipPadForShadows extends CustomClipper<Rect> {
  final EdgeInsets padding;

  const ClipPadForShadows({
    this.padding = EdgeInsets.zero
  });

  @override
  Rect getClip(Size size) => padding.inflateRect(Offset.zero & size);

  @override
  bool shouldReclip(ClipPadForShadows oldClipper) => oldClipper.padding != padding;
}