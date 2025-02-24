import 'package:core/domain/entity/customer.fr.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'edit_email_state.fr.freezed.dart';

@freezed
class EditEmailState with _$EditEmailState {
  const EditEmailState._();

  const factory EditEmailState.initial() = _Initial;

  const factory EditEmailState.loading() = _Loading;

  const factory EditEmailState.success(Customer customer) = _Success;

  const factory EditEmailState.error(
      ErrorHandler error,
      ) = _Error;
}
