import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:omni_adobe_core/utils/extension.dart';

part 'instaleap_availability_input.fr.freezed.dart';
part 'instaleap_availability_input.fr.g.dart';

@freezed
class InstaleapAvailabilityInput with _$InstaleapAvailabilityInput {
  const factory InstaleapAvailabilityInput({
    required String carrierCode,
    required String cartId,
    required String end,
    required bool express,
    required bool fallback,
    required String sourceCode,
    required String start,
  }) = _InstaleapAvailabilityInput;

  factory InstaleapAvailabilityInput.fromJson(Map<String, dynamic> json) => _$InstaleapAvailabilityInputFromJson(json);
}

extension ToMutation on InstaleapAvailabilityInput {
  String toParamMutation() => toParamMutationHelper(jsonEncode(toJson()));
}