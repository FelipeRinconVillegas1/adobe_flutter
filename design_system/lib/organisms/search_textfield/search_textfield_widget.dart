import 'dart:async';
import 'dart:io' show Platform;

import 'package:core/domain/entity/permission_entities.dart';
import 'package:core/ui/state/permission_handler_notifier.fr.dart';
import 'package:design_system/foundations/typo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:speech_to_text/speech_to_text.dart';

import '../../atoms/data_models/primary_svg_icon_data.dart';
import '../../atoms/icons/primary_svg_icon_asset.dart';
import '../../foundations/colors.dart';
import '../../foundations/icons.dart';
import '../../molecules/search_text_field.dart';

class SearchTextfieldWidget extends ConsumerStatefulWidget {
  const SearchTextfieldWidget({
    super.key,
    required this.data,
  });

  final SearchTextfieldData data;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SearchTextfieldWidgetState();
}

class _SearchTextfieldWidgetState extends ConsumerState<SearchTextfieldWidget> {
  SpeechToText? _speechToText;
  bool isMicrophoneActive = false;

  Future<void> _showSettingsDialog(List<PermissionTypesEntity> permissionTypesEntity, BuildContext context) async {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(widget.data.permissionRequiredText ?? ''),
          content: Column(
            children: [
              Text(widget.data.permissionRequiredDetailText ?? ''),
              ...permissionTypesEntity
                  .map((permission) => Text(permission.name(context)))
                  .toList()
            ],
          ),
          actions: [
            TextButton(onPressed: () => Navigator.of(context).pop(), child: Text(widget.data.notNowText ?? '')),
            TextButton(
              onPressed: () async => await ref.read(permissionHandlerNotifierProvider.notifier).openSettings(),
              child: Text(widget.data.settingText ?? ''),
            ),
          ],
        );
      },
    );
  }

  @override
  void initState() {
    widget.data.controller?.text = widget.data.textProductSearch;
    _speechToText = SpeechToText();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final permissionHandler = ref.read(permissionHandlerNotifierProvider.notifier);
    int waitingTimeSeacrhProduct = 1;
    Timer? countdownTimer;
    return SearchTextField(
      style: SearchTextFieldStyle.defaultStyle().copyWith(
        style: OmniTypographyFoundation.bold12Black161615.copyWith(decoration: TextDecoration.none),
        height: widget.data.height,
        showIconClear: widget.data.showIconClear,
        suffixIcon: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            if (widget.data.showScan)
              Flexible(
                child: GestureDetector(
                  onTap: () async {
                    final permissionStatusCamera =
                        await permissionHandler.requestPermission(permissionTypesEntity: PermissionTypesEntity.camera);
                    if (!permissionStatusCamera.isGranted() && mounted) {
                      await _showSettingsDialog([PermissionTypesEntity.camera], context);
                      return;
                    }
                    if (mounted && widget.data.onScanRoute != null) {
                      widget.data.onScanRoute!();
                    }
                  },
                  child: RotatedBox(
                    quarterTurns: 1,
                    child: Icon(Icons.document_scanner_outlined, color: ColorsOmni.primaryRed, size: 18.h),
                  ),
                ),
              ),
            if (widget.data.isMicrophoneEnabled) SizedBox(width: 15.w),
            if (widget.data.isMicrophoneEnabled)
              GestureDetector(
                onTap: widget.data.isMicrophoneEnabled
                    ? () async {
                        final permissionStatusMic = await permissionHandler.requestPermission(
                            permissionTypesEntity: PermissionTypesEntity.microphone);
                        if (!permissionStatusMic.isGranted() && mounted) {
                          await _showSettingsDialog([PermissionTypesEntity.microphone], context);
                          return;
                        }
                        if (Platform.isIOS) {
                          final permissionStatusSpeech = await permissionHandler.requestPermission(
                              permissionTypesEntity: PermissionTypesEntity.speech);
                          if (!permissionStatusSpeech.isGranted() && mounted) {
                            await _showSettingsDialog([PermissionTypesEntity.speech], context);
                            return;
                          }
                        }
                        if (mounted) {
                          var isAvailable = await _speechToText!.initialize();
                          setState(() {
                            isMicrophoneActive = true;
                          });
                          if (isAvailable) {
                            await _speechToText!.listen(
                              onResult: (result) async {
                                await _speechToText!.stop();
                                if (countdownTimer != null) {
                                  countdownTimer!.cancel();
                                }
                                countdownTimer = Timer.periodic(Duration(seconds: waitingTimeSeacrhProduct), (_) async {
                                  setState(() {
                                    isMicrophoneActive = false;
                                  });
                                  countdownTimer!.cancel();

                                  if (widget.data.onMicResultsRoute != null) {
                                    widget.data.onMicResultsRoute!(result.recognizedWords);
                                  }
                                });
                              },
                            );
                          }
                        }
                      }
                    : null,
                child: PrimarySvgIconAsset(
                  data: PrimarySvgIconData(
                    icon: OmniIcons.microphone,
                    height: 20,
                    width: 20,
                    colorFilter: ColorFilter.mode(
                      isMicrophoneActive ? ColorsOmni.primaryRed : ColorsOmni.ratingGrey,
                      BlendMode.srcIn,
                    ),
                  ),
                ),
              )
          ],
        ),
      ),
      params: SearchTextFieldParams(
        hintText: widget.data.searchProductHintText,
        onChange: widget.data.onChange,
        onSubmitted: widget.data.onSubmitted,
        readOnly: widget.data.readOnly,
        onTap: () {
          if (widget.data.onTap != null) {
            widget.data.onTap!();
          }
          if (widget.data.onEventTap != null) {
            widget.data.onEventTap!();
          }
        },
        focusNode: widget.data.focusNode,
        controller: widget.data.controller,
      ),
    );
  }
}

class SearchTextfieldData {
  SearchTextfieldData({
    required this.focusNode,
    this.permissionRequiredText,
    this.permissionRequiredDetailText,
    this.notNowText,
    this.settingText,
    this.searchProductHintText,
    this.onScanRoute,
    this.onTap,
    this.onMicResultsRoute,
    this.isMicrophoneEnabled = true,
    this.showScan = true,
    this.height,
    this.controller,
    this.textProductSearch = '',
    this.showIconClear = false,
    this.readOnly = false,
    this.onChange,
    this.onSubmitted,
    this.onEventTap,
  });
  final String? permissionRequiredText;
  final String? permissionRequiredDetailText;
  final String? notNowText;
  final String? settingText;
  final String? searchProductHintText;
  final VoidCallback? onScanRoute;
  final VoidCallback? onTap;
  final Function(String results)? onMicResultsRoute;
  final Function(String value)? onSubmitted;
  final Function(String text)? onChange;
  final bool isMicrophoneEnabled;
  final bool showScan;
  final double? height;
  final TextEditingController? controller;
  final FocusNode focusNode;
  final String textProductSearch;
  final bool showIconClear;
  final VoidCallback? onEventTap;
  final bool readOnly;
}
