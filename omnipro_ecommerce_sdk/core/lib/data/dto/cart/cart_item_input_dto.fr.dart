import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_item_input_dto.fr.freezed.dart';

part 'cart_item_input_dto.fr.g.dart';

@freezed
class CartItemInputDTO with _$CartItemInputDTO {
  const factory CartItemInputDTO({
    required double quantity,
    required String sku,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'entered_options') List<EnteredOptionInputDTO>? enteredOptions,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'parent_sku') String? parentSku,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'selected_options') List<String>? selectedOptions,
  }) = _CartItemInputDTO;

  factory CartItemInputDTO.fromJson(Map<String, Object?> json) => _$CartItemInputDTOFromJson(json);
}

@freezed
class EnteredOptionInputDTO with _$EnteredOptionInputDTO {
  const factory EnteredOptionInputDTO({
    required String uid,
    required String value,
  }) = _EnteredOptionInputDTO;

  factory EnteredOptionInputDTO.fromJson(Map<String, Object?> json) => _$EnteredOptionInputDTOFromJson(json);
}
