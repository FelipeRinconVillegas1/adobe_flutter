import 'package:core/domain/entity/customer.fr.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'edit_profile_state.fr.freezed.dart';

@freezed
class EditProfileState with _$EditProfileState {
  const EditProfileState._();

  const factory EditProfileState.initial() = _Initial;

  const factory EditProfileState.loading() = _Loading;

  const factory EditProfileState.success(Customer customer) = _Success;

  const factory EditProfileState.error(
    Map<String, bool> error,
  ) = _Error;
}
