import 'package:design_system/atoms/data_models/accordion_button_data.dart';
import 'package:design_system/atoms/data_models/primary_svg_icon_data.dart';
import 'package:design_system/widgets_omni.dart';
import 'package:flutter/material.dart';

class AccordionButton extends StatefulWidget {
  const AccordionButton({super.key, required this.data});

  final AccordionButtonData data;

  @override
  State<AccordionButton> createState() => _AccordionButtonState();
}

class _AccordionButtonState extends State<AccordionButton> {
  bool _isExpanded = false;

  @override
  void initState() {
    widget.data.isExpanded?.stream.listen((event) {
      _isExpanded = event;
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final title = widget.data.titleWidget ??
        Text(
          widget.data.title ?? '',
          style: widget.data.titleStyle,
        );

    return InkWell(
      onTap: () {
        _isExpanded = !_isExpanded;
        setState(() {});
      },
      child: Container(
        decoration: BoxDecoration(
          color: widget.data.backgroundColor,
          boxShadow: widget.data.boxShadow,
          borderRadius: BorderRadius.circular(widget.data.borderRadius ?? 0),
        ),
        child: Column(
          children: [
            Container(
              height: widget.data.height,
              width: widget.data.width,
              padding: widget.data.padding,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  title,
                  PrimarySvgIconAsset(
                    data: PrimarySvgIconData(
                      icon: _isExpanded ? OmniIcons.upArrow : OmniIcons.down,
                      colorFilter: widget.data.buttonColor != null
                          ? ColorFilter.mode(
                              widget.data.buttonColor!,
                              BlendMode.srcIn,
                            )
                          : null,
                    ),
                  ),
                ],
              ),
            ),
            if (_isExpanded && widget.data.child != null)
              Container(
                padding: widget.data.contentPadding ?? EdgeInsets.zero,
                child: widget.data.child!,
              ),
          ],
        ),
      ),
    );
  }
}

class AccordionButtonDescription extends StatelessWidget {
  const AccordionButtonDescription({
    super.key,
    required this.data,
    this.html,
  });

  final AccordionButtonData data;
  final String? html;

  @override
  Widget build(BuildContext context) {
    return AccordionButton(
      data: data.description(html),
    );
  }
}

class AccordionButtonLegal extends StatelessWidget {
  const AccordionButtonLegal({
    super.key,
    required this.data,
    required this.legalTerms,
  });

  final AccordionButtonData data;
  final List<String> legalTerms;

  @override
  Widget build(BuildContext context) {
    return AccordionButton(
      data: data.legal(legalTerms),
    );
  }
}
