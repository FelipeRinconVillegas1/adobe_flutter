import 'package:auto_size_text/auto_size_text.dart';
import 'package:design_system/atoms/data_models/primary_textfield_base_data.dart';
import 'package:design_system/foundations/colors.dart';
import 'package:flutter/material.dart';
import 'package:substring_highlight/substring_highlight.dart';
import '../../foundations/typo.dart';
import '../../tokens/typography.dart';

class PrimaryTextFieldBase extends StatefulWidget {
  const PrimaryTextFieldBase({
    super.key,
    required this.data,
  });

  final PrimaryTextfieldBaseData data;

  @override
  State<PrimaryTextFieldBase> createState() => _PrimaryTextFieldBaseState();
}

class _PrimaryTextFieldBaseState extends State<PrimaryTextFieldBase> {
  late OverlayEntry? _overlayEntry;
  final LayerLink _layerLink = LayerLink();

  @override
  void initState() {
    if (widget.data.enableSuggestedText && widget.data.focusNode != null) {
      widget.data.focusNode!.addListener(() {
        if (widget.data.focusNode!.hasFocus) {
          _overlayEntry = _createOverlayEntry();
          if (_overlayEntry != null) {
            Overlay.of(context).insert(_overlayEntry!);
          }
        } else {
          removeOverlay();
        }
      });
      widget.data.textEditingController?.addListener(() {
        if ((widget.data.textEditingController?.text.isNotEmpty ?? false) &&
            _overlayEntry != null &&
            _overlayEntry!.mounted) {
          _overlayEntry!.markNeedsBuild();
        }
      });
    }
    super.initState();
  }

  void removeOverlay() {
    if (_overlayEntry != null && _overlayEntry!.mounted) {
      _overlayEntry?.remove();
    }
  }

  List<String> listOfSuggestionsFiltered(List<String> suggestions, String text) {
    return suggestions
        .where((element) =>
            element.toLowerCase().contains(text.toLowerCase()) && element.toLowerCase() != text.toLowerCase())
        .toList();
  }

  OverlayEntry? _createOverlayEntry() {
    RenderBox? renderBox = context.findRenderObject() as RenderBox?;
    if (renderBox == null || widget.data.suggestedTexts.isEmpty) return null;
    var size = renderBox.size;
    return OverlayEntry(builder: (context) {
      List<String> listOfSuggestions =
          listOfSuggestionsFiltered(widget.data.suggestedTexts, widget.data.textEditingController?.text ?? '');
      return Stack(
        children: [
          Positioned.fill(
              child: GestureDetector(
            onTap: () {
              removeOverlay();
            },
            child: Container(
              color: Colors.transparent,
            ),
          )),
          Positioned(
            width: size.width,
            child: CompositedTransformFollower(
              link: _layerLink,
              showWhenUnlinked: false,
              offset: Offset(0.0, size.height + 2.0),
              child: Material(
                elevation: 4.0,
                child: ListView.builder(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  itemCount: listOfSuggestions.length,
                  itemBuilder: (context, index) {
                    final String emailSuggested = listOfSuggestions[index];
                    return ListTile(
                      dense: true,
                      contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0.0),
                      visualDensity: const VisualDensity(vertical: -4),
                      title: SubstringHighlight(
                        text: emailSuggested, // search result string from database or something
                        term: widget.data.textEditingController?.text,
                        textStyle: OmniTypographyFoundation.regular12Black454545,
                        textStyleHighlight: OmniTypographyFoundation.bold12Black161615,
                      ),
                      onTap: () {
                        widget.data.textEditingController?.text = emailSuggested;
                        removeOverlay();
                      },
                    );
                  },
                ),
              ),
            ),
          )
        ],
      );
    });
  }

  bool get showLabelIcon => widget.data.labelIcon != null && widget.data.showLabel;

  bool get showLabelIconInfo => widget.data.labelIconInfo != null && widget.data.showLabel;

  bool get showLabel => widget.data.label != null && widget.data.showLabel;

  bool get isNeedPadingLabel => showLabelIcon || showLabelIconInfo || showLabel;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.data.label != null)
          Padding(
            padding: EdgeInsets.only(bottom: isNeedPadingLabel ? 10 : 0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    if (showLabelIcon) widget.data.labelIcon!,
                    if (showLabel) ...[
                      const SizedBox(width: 2),
                      Expanded(
                        child: Row(
                          children: [
                            Flexible(
                              child: AutoSizeText.rich(
                                TextSpan(
                                  text: widget.data.label!,
                                  style: widget.data.styleLabel,
                                  children: [
                                    if (widget.data.isRequired)
                                      TextSpan(
                                        text: widget.data.labelRequired ?? '*',
                                        style: widget.data.labelRequiredTextStyle,
                                      ),
                                  ],
                                ),
                                minFontSize: OmniTypography.size14.roundToDouble(),
                              ),
                            ),
                            if (showLabelIconInfo) ...[
                              const SizedBox(width: 4),
                              GestureDetector(onTap: widget.data.onTapLabelIconInfo, child: widget.data.labelIconInfo!),
                            ],
                          ],
                        ),
                      ),
                    ],
                  ],
                ),
              ],
            ),
          ),
        widget.data.enableSuggestedText
            ? CompositedTransformTarget(
                link: _layerLink,
                child: _InputPrimaryTextFieldBase(widget.data),
              )
            : _InputPrimaryTextFieldBase(widget.data),
        if (widget.data.errorText != null)
          Padding(
            padding: widget.data.errorPadding ?? EdgeInsets.zero,
            child: Row(
              children: [
                if (widget.data.iconLeadingError != null) widget.data.iconLeadingError!,
                const SizedBox(width: 2),
                Expanded(
                  child: Text(
                    widget.data.errorText!,
                    style: widget.data.errorTextStyle,
                  ),
                )
              ],
            ),
          ),
      ],
    );
  }
}

class _InputPrimaryTextFieldBase extends StatefulWidget {
  const _InputPrimaryTextFieldBase(this.data);
  final PrimaryTextfieldBaseData data;

  @override
  State<_InputPrimaryTextFieldBase> createState() => _InputPrimaryTextFieldBaseState();
}

class _InputPrimaryTextFieldBaseState extends State<_InputPrimaryTextFieldBase> {
  bool hasFocus = false;

  Color _borderColor() {
    if (!widget.data.enable) return widget.data.disableColor;
    if (widget.data.errorText != null) return widget.data.errorColor;
    if (hasFocus) return widget.data.focusColor;
    return widget.data.unfocusColor;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.data.width,
      height: widget.data.height,
      padding: widget.data.padding,
      decoration: BoxDecoration(
        color: widget.data.fillColor,
        borderRadius: BorderRadius.all(
          Radius.circular(widget.data.radius ?? 0),
        ),
        border: widget.data.border ??
            Border.all(
              color: _borderColor(),
              width: widget.data.borderStroke ?? 0,
            ),
        boxShadow: widget.data.boxShadow,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          if (widget.data.prefixIcon != null)
            Flexible(flex: widget.data.flexPrefixIcon, child: widget.data.prefixIcon!),
          Flexible(
            flex: 10,
            child: Focus(
              onFocusChange: (value) {
                setState(() {
                  hasFocus = value;
                });
              },
              child: GestureDetector(
                onTap: () {
                  if (widget.data.onTap != null) {
                    widget.data.onTap!();
                  }
                },
                child: TextField(
                  focusNode: widget.data.focusNode,
                  maxLength: widget.data.maxLength,
                  cursorColor: ColorsOmni.grey707070,
                  controller: widget.data.textEditingController,
                  enabled: widget.data.enable,
                  showCursor: widget.data.showCursor ?? true,
                  onChanged: widget.data.onChanged,
                  style: widget.data.isRequired ? widget.data.textStyleWhenIsRequired : widget.data.textStyle,
                  minLines: widget.data.minLines,
                  maxLines: widget.data.maxLines,
                  maxLengthEnforcement: widget.data.maxLengthEnforcement,
                  expands: widget.data.expands,
                  autofocus: widget.data.autofocus ?? false,
                  cursorWidth: 1,
                  textAlign: widget.data.textAlign ?? TextAlign.start,
                  obscureText: widget.data.obscureText,
                  keyboardType: widget.data.textInputType,
                  textInputAction: widget.data.textInputAction,
                  onSubmitted: (value) {
                    if (widget.data.onSubmitted != null) {
                      widget.data.onSubmitted!(value);
                    }
                  },
                  decoration: InputDecoration(
                    hintText: widget.data.hintText,
                    hintStyle: widget.data.hintTextStyle,
                    counterText: '',
                    border: widget.data.inputBorder,
                    focusedBorder: widget.data.focusedInputBorder,
                    enabledBorder: widget.data.enabledInputBorder,
                    isDense: true,
                    contentPadding: widget.data.contentPadding,
                  ),
                  inputFormatters: widget.data.inputFormatters,
                ),
              ),
            ),
          ),
          if (widget.data.suffixIcon != null)
            Flexible(
              flex: widget.data.flexSuffixIcon,
              child: Padding(
                  padding: widget.data.suffixIconPadding ??
                      EdgeInsets.only(top: widget.data.padding?.vertical ?? 0, right: 8),
                  child: widget.data.suffixIcon!),
            ),
        ],
      ),
    );
  }
}
