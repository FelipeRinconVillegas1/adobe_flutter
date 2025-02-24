import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';

import '../../data/repository/address_repository.dart';
import '../entity/user_who_pickup_in_store_entity.fr.dart';

class GetLocalUserWhoPickupInStoreUseCase {
  GetLocalUserWhoPickupInStoreUseCase(this._addressRepository);

  final AddressRepository _addressRepository;

  Future<Either<ErrorHandler, UserWhoPickupInStoreEntity?>> call() async {
    return await _addressRepository.getUserWhoPickUp();
  }
}
