import 'package:core/data/dto/cart/set_billing_address_oms_options_dto.fr.dart';
import 'package:core/data/dto/cart/set_shipping_address_oms_options_dto.fr.dart';
import 'package:core/data/dto/customer_address_dto.fr.dart';
import 'package:address/domain/entity/customer_address_entity.dart';
import 'package:core/data/dto/custom_attribute_dto.fr.dart';
import 'package:core/data/dto/state_dto.fr.dart';
import 'package:core/domain/entity/cart/set_shipping_address_oms_options.dart';
import 'package:core/domain/entity/state_country_entity.dart';
import 'package:core/domain/entity/states_country.dart';
import 'package:core/utils/custom_attribute_code.dart';
import 'package:collection/collection.dart';

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

extension MapperSetShippingAddressOmsOptions on SetShippingAddressOmsOptions {
  SetShippingAddressOmsOptionsDTO toDTO() => SetShippingAddressOmsOptionsDTO(
        longitude: longitude,
        latitude: latitude,
        zoneCustom: zoneCustom,
        stateCustom: stateCustom,
        cityCustom: cityCustom,
        omsReceivingDeliveryInstructions: omsReceivingDeliveryInstructions,
        omsReceivingFullName: omsReceivingFullName,
        omsReceivingIdentification: omsReceivingIdentification,
        omsReceivingSpecialRequest: omsReceivingSpecialRequest,
        omsReceivingTelephone: omsReceivingTelephone,
        omsReceivingOption: omsReceivingOption,
      );
}

extension MapperSetBillingAddressOmsOptions on AddressOmsOptions {
  SetBillingAddressOmsOptionsDTO toDTO() => SetBillingAddressOmsOptionsDTO(
        longitude: longitude,
        latitude: latitude,
        zoneCustom: zoneCustom,
        stateCustom: stateCustom,
        cityCustom: cityCustom,
      );
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
        customAttributes: [
          CustomAttributeDTO(
            code: CustomAttributeCode.stateCustom.value,
            value: state,
          ),
          CustomAttributeDTO(
            code: CustomAttributeCode.zoneCustom.value,
            value: zone,
          ),
          CustomAttributeDTO(
            code: CustomAttributeCode.cityCustom.value,
            value: cityCustom,
          ),
          CustomAttributeDTO(
            code: CustomAttributeCode.addressType.value,
            value: category,
          ),
          CustomAttributeDTO(
            code: CustomAttributeCode.areaCodeTelephone.value,
            value: areaCodeTelephone,
          ),
          if (latitude != null)
            CustomAttributeDTO(
              code: CustomAttributeCode.latitude.value,
              value: latitude!,
            ),
          if (longitude != null)
            CustomAttributeDTO(
              code: CustomAttributeCode.longitude.value,
              value: longitude!,
            ),
        ],
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
        areaCodeTelephone:
            customAttributes.firstWhere((element) => element.code == CustomAttributeCode.areaCodeTelephone.value).value,
        zone: customAttributes.firstWhere((element) => element.code == CustomAttributeCode.zoneCustom.value).value,
        state: customAttributes.firstWhere((element) => element.code == CustomAttributeCode.stateCustom.value).value,
        category: customAttributes.firstWhere((element) => element.code == CustomAttributeCode.addressType.value).value,
        latitude:
            customAttributes.firstWhereOrNull((element) => element.code == CustomAttributeCode.latitude.value)?.value,
        longitude:
            customAttributes.firstWhereOrNull((element) => element.code == CustomAttributeCode.longitude.value)?.value,
        cityCustom:
            customAttributes.firstWhere((element) => element.code == CustomAttributeCode.cityCustom.value).value,
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
