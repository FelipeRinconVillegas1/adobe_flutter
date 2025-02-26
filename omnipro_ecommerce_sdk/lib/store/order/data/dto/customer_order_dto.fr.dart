import 'package:freezed_annotation/freezed_annotation.dart';

part 'customer_order_dto.fr.freezed.dart';
part 'customer_order_dto.fr.g.dart';

@freezed
class CustomerOrderDTO with _$CustomerOrderDTO {
  const factory CustomerOrderDTO({
    @JsonKey(name: 'order_number') required String orderNumber,
  }) = _CustomerOrderDTO;

  factory CustomerOrderDTO.fromJson(Map<String, Object?> json) => _$CustomerOrderDTOFromJson(json);
}
