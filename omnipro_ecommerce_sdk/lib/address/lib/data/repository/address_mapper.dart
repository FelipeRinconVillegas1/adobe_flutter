import 'package:core/data/dto/customer_address_dto.fr.dart';
import 'package:core/data/dto/state_dto.fr.dart';
import 'package:core/domain/entity/state_country_entity.dart';
import 'package:core/domain/entity/states_country.dart';
import '../../domain/entity/customer_address_entity.dart';

extension MapperListStateDTO on List<StateDTO> {
  StatesCountry toDomain() => StatesCountry(statesCountry: map((e) => e.toDomain()).toList());
}

extension MapperStateDTO on StateDTO {
  StateCountryEntity toDomain() => StateCountryEntity(
        id: id,
        name: name,
        code: code,
      );
}

extension MapperListCustomerAddressDTO on List<CustomerAddressDTO> {
  List<CustomerAddressEntity> toDomain() => map((e) => e.toDomain()).toList();
}

extension MapperCustomerAddressEntity on CustomerAddressEntity {
  CustomerAddressDTO toDTO() => CustomerAddressDTO(
        id: id,
        city: city,
        countryCode: countryCode,
        defaultBilling: defaultBilling,
        defaultShipping: defaultShipping,
        firstname: firstname,
        lastname: lastname,
        postcode: postcode,
        // ignore: deprecated_member_use_from_same_package
        region: region.toDTO(),
        street: [street, detailAddress, specialInstructions],
        telephone: telephone,
      );
}

extension MapperCustomerAddressDTO on CustomerAddressDTO {
  CustomerAddressEntity toDomain() => CustomerAddressEntity(
        id: id,
        city: city,
        countryCode: countryCode,
        defaultBilling: defaultBilling!,
        defaultShipping: defaultShipping!,
        firstname: firstname,
        lastname: lastname,
        postcode: postcode,
        region: region.toDomain(),
        street: street.isNotEmpty ? street[0] : '',
        telephone: telephone,
        detailAddress: street.length > 1 ? street[1] : '',
        specialInstructions: street.length > 2 ? street[2] : '',
      );
}

extension MapperRegionEntity on RegionEntity {
  RegionDTO toDTO() => RegionDTO(region: region, regionId: regionId, code: code);
}

extension MapperRegionDTO on RegionDTO {
  RegionEntity toDomain() => RegionEntity(region: region, regionId: regionId, code: code);
}
