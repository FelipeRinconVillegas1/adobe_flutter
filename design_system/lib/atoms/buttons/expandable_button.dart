import 'package:design_system/atoms/buttons/data_models/expandable_button_data.dart';
import 'package:flutter/material.dart';

class ExpandableButton extends StatefulWidget {
  const ExpandableButton({super.key, required this.data});

  final ExpandableButtonData data;

  @override
  State<ExpandableButton> createState() => _ExpandableButtonState();
}

class _ExpandableButtonState extends State<ExpandableButton> {
  bool _isExpanded = false;

  @override
  void initState() {
    _isExpanded = widget.data.initWidgetExpanded ?? false;

    widget.data.isExpanded?.stream.listen((event) {
      _isExpanded = event;
      setState(() {});
    });
    super.initState();
  }

  Widget getTitle() {
    if (widget.data.title == null) return const SizedBox.shrink();
    if (widget.data.title is String) return Text(widget.data.title as String, style: widget.data.titleStyle);

    return widget.data.title as Widget;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: widget.data.outerPadding ?? EdgeInsets.zero,
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                _isExpanded = !_isExpanded;
                widget.data.onTap?.call(_isExpanded);
                setState(() {});
              },
              child: Container(
                height: widget.data.buttonHeight,
                width: widget.data.buttonWidth,
                padding: widget.data.buttonPadding,
                decoration: BoxDecoration(
                  color: widget.data.buttonBackgroundColor,
                  boxShadow: widget.data.buttonBoxShadow,
                  border: widget.data.buttonBorder,
                  borderRadius: widget.data.buttonBorderRadius,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    getTitle(),
                    Icon(
                      size: widget.data.iconSize,
                      _isExpanded ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down,
                      color: widget.data.buttonColor,
                    ),
                  ],
                ),
              ),
            ),
            if (_isExpanded && widget.data.child != null)
              Padding(
                padding: widget.data.contentPadding ?? EdgeInsets.zero,
                child: widget.data.child!,
              ),
          ],
        ),
      ),
    );
  }
}
