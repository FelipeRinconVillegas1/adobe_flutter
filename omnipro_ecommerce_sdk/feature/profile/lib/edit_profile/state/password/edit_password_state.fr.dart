import 'package:core/domain/entity/customer.fr.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'edit_password_state.fr.freezed.dart';

@freezed
class EditPasswordState with _$EditPasswordState {
  const EditPasswordState._();

  const factory EditPasswordState.initial() = _Initial;

  const factory EditPasswordState.loading() = _Loading;

  const factory EditPasswordState.success(Customer customer) = _Success;

  const factory EditPasswordState.error(
    ErrorHandler error,
  ) = _Error;
}
