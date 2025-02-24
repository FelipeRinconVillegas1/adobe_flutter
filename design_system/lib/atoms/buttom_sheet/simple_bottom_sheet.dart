import 'package:flutter/material.dart';

class SimpleBottomSheet extends StatelessWidget {
  const SimpleBottomSheet({
    super.key,
    required this.data,
  });

  final SimpleBottomSheetData data;

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.loose,
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        Container(
          width: data.width,
          decoration: BoxDecoration(
            color: data.fillColor,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: data.headerHeight,
                width: data.width,
                decoration: BoxDecoration(
                  color: data.headerBackgroundColor,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                ),
                child: data.header,
              ),
              Flexible(
                child: Container(
                  width: data.width,
                  color: data.contentBackgroundColor,
                  child: data.content,
                ),
              ),
            ],
          ),
        ),
        Positioned(
            top: -15,
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                  height: 4,
                  width: 28,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    color: Color.fromRGBO(232, 236, 239, 1),
                  )),
            )),
      ],
    );
  }
}

class SimpleBottomSheetData {
  SimpleBottomSheetData(
      {this.header,
      this.content,
      this.width,
      this.headerHeight,
      this.contentBackgroundColor,
      this.fillColor,
      this.headerBackgroundColor});
  final Widget? header;
  final Widget? content;
  final double? width;
  final double? headerHeight;
  final Color? fillColor;
  final Color? contentBackgroundColor;
  final Color? headerBackgroundColor;

  SimpleBottomSheetData copyWith({
    Widget? header,
    Widget? content,
    double? height,
    double? width,
    double? headerHeight,
    Color? headerBackgroundColor,
    Color? contentBackgroundColor,
    Color? fillColor,
  }) {
    return SimpleBottomSheetData(
      header: header ?? this.header,
      content: content ?? this.content,
      width: width ?? this.width,
      headerHeight: headerHeight ?? this.headerHeight,
      contentBackgroundColor: contentBackgroundColor ?? this.contentBackgroundColor,
      fillColor: fillColor ?? this.fillColor,
      headerBackgroundColor: headerBackgroundColor ?? this.headerBackgroundColor,
    );
  }
}
