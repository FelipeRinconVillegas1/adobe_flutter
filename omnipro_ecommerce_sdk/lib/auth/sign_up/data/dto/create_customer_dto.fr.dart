import 'package:core/utils/date_time_converter_iso8601.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_customer_dto.fr.freezed.dart';
part 'create_customer_dto.fr.g.dart';

@freezed
class CreateCustomerDTO with _$CreateCustomerDTO {
  @JsonSerializable(explicitToJson: true)
  const factory CreateCustomerDTO({
    required String firstName,
    required String lastName,
    required String email,
    required String password,
    required int gender,
    @JsonKey(name: 'date_of_birth') @DateTimeConverterISO8601() required DateTime dateOfBirth,
  }) = _CreateCustomerDTO;

  factory CreateCustomerDTO.fromJson(Map<String, Object?> json) => _$CreateCustomerDTOFromJson(json);
}
