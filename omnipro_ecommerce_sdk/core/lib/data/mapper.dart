import 'package:address/data/repository/address_mapper.dart';
import 'package:core/data/dto/available_payment_method_dto.fr.dart';
import 'package:core/data/dto/custom_attribute_dto.fr.dart';
import 'package:core/data/dto/dropdown_manager/dropdown_option_dto.fr.dart';
import 'package:core/data/dto/html/html_dto.fr.dart';
import 'package:core/data/dto/localization_item_dto.fr.dart';
import 'package:core/data/dto/products_mapper.dart';
import 'package:core/data/dto/purse_info_dto.fr.dart';
import 'package:core/domain/entity/available_payment_method.dart';
import 'package:core/domain/entity/bot_whatsapp.dart';
import 'package:core/domain/entity/cart/reundable_fee_entity.dart';
import 'package:core/domain/entity/complement_share_product.dart';
import 'package:core/domain/entity/custom_attribute.dart';
import 'package:core/domain/entity/customer.fr.dart';
import 'package:core/domain/entity/dropdown_manager/dropdown_option.dart';
import 'package:core/domain/entity/html/html_entity.dart';
import 'package:core/domain/entity/localization_item.dart';
import 'package:core/domain/entity/localization_message.dart';
import 'package:core/domain/entity/money.fr.dart';
import 'package:core/domain/entity/purse_info_entity.dart';
import 'package:core/domain/entity/session_data.dart';
import 'package:core/domain/entity/user_credential_response.dart';
import 'package:core/utils/custom_attribute_code.dart';

import '../domain/entity/delete_account/delete_customer_input.dart';
import '../domain/entity/stores/warehouse_address_entity.fr.dart';
import '../domain/entity/orders/orders_edited_entity.fr.dart';
import '../domain/entity/shipping_methods_entity.dart';
import '../domain/entity/wishlist.fr.dart';
import '../domain/entity/loyalty_wallet/balance_loyalty_wallet.dart';
import '../domain/entity/loyalty_wallet/loyalty_wallet_credential.dart';
import '../domain/entity/loyalty_wallet/loyalty_wallet_transaction.dart';
import 'dto/bot_whats_app_dto.fr.dart';
import 'dto/cart/refundable_fee_dto.fr.dart';
import 'dto/cart/warehouse_address_dto.fr.dart';
import 'dto/complement_share_product_dto.fr.dart';
import 'dto/customer_dto.fr.dart';
import 'dto/delete_account/delete_customer_input_dto.fr.dart';
import 'dto/localization_message_dto.fr.dart';
import 'dto/loyalty_wallet/balance_loyalty_wallet_dto.fr.dart';
import 'dto/loyalty_wallet/loyalty_wallet_credential_dto.fr.dart';
import 'dto/loyalty_wallet/loyalty_wallet_transaction_dto.fr.dart';
import 'dto/money_dto.fr.dart';
import 'dto/money_info_dto.fr.dart';
import 'dto/orders/order_edited_dto.fr.dart';
import 'dto/session_data_dto.fr.dart';
import 'dto/shipping_methods_dto.fr.dart';
import 'dto/user_credential_response_dto.fr.dart';
import 'dto/wishlist_dto.fr.dart';

extension MapperMessageWithLocalizationDTO on MessageWithLocalizationDTO {
  MessageWithLocalization toDomain() => MessageWithLocalization(
        code,
        message,
      );
}

extension MapperLocalizationMessageDTO on LocalizationMessageDTO {
  LocalizationMessage toDomain() => LocalizationMessage(
        messagesWithLocalization.map((e) => e.toDomain()).toList(),
      );
}

extension MapperBotWhatsAppDTO on BotWhatsAppDTO {
  BotWhatsApp toDomain() => BotWhatsApp(
        number: number,
        countryCode: countryCode,
        initialMessage: initialMessage.toDomain(),
      );
}

extension UserCredentialResponseMapper on UserCredentialResponse {
  UserCredentialResponseDTO toDTO() => UserCredentialResponseDTO(
        firstName: firstName,
        lastName: lastName,
        email: email,
        sub: sub,
        nonce: nonce,
        token: token,
        provider: provider,
      );
}

extension MapperSessionData on SessionData {
  SessionDataDTO toDTO() => SessionDataDTO(
        email: email,
        password: password,
        token: token,
        refreshToken: refreshToken,
        userCredentialResponseDTO: userCredentialResponseDTO?.toDTO(),
      );
}

extension CustomerMapper on Customer {
  CustomerDTO toDTO() => CustomerDTO(
        id: id,
        firstName: firstName,
        lastName: lastName,
        email: email,
        dateOfBirth: dateOfBirth,
        wishlists: wishlists.map((e) => e.toDTO()).toList(),
        gender: gender,
        customAttributes: [
          ...customAttributesRequired.values.map((e) => e.toDTO()).toList(),
          ...customAttributesOptionals.values.map((e) => e.toDTO()).toList(),
        ],
        addresses: addresses.map((e) => e.toDTO()).toList(),
      );
}

extension CustomerDTOMapper on CustomerDTO {
  Customer toDomain() => Customer(
        id: id,
        firstName: firstName,
        lastName: lastName,
        email: email,
        dateOfBirth: dateOfBirth,
        gender: gender,
        wishlists: wishlists.map((e) => e.toDomain()).toList(),
        customAttributesRequired: customAttributesRequired.map((key, value) => MapEntry(
            key,
            CustomAttribute(
              code: CustomAttributeCode.fromString(value.code),
              value: value.value,
            ))),
        customAttributesOptionals: customAttributesOptionals.map((key, value) => MapEntry(
            key,
            CustomAttribute(
              code: CustomAttributeCode.fromString(value.code),
              value: value.value,
            ))),
        addresses: addresses.map((e) => e.toDomain()).toList(),
      );
}

extension MapperWishListDeleteDTO on WishListDeleteDTO {
  WishListDeleteEntity toDomain() => WishListDeleteEntity(
        status: status,
        deletedWishlistIds: deletedWishlistIds,
        errorMessages: errorMessages,
        wishlists: wishlists.map((e) => e.toDomain()).toList(),
      );
}

extension WishListMapper on WishList {
  WishListDTO toDTO() => WishListDTO(
        id: id,
        name: name,
        items: items.toDTO(),
        visibility: visibility,
      );
}

extension WishListDTOMapper on WishListDTO {
  WishList toDomain() => WishList(
        id: id,
        name: name,
        items: items.toDomain(),
        visibility: visibility,
      );
}

extension WishListItemV2Mapper on WishListItemV2 {
  WishListItemV2DTO toDTO() => WishListItemV2DTO(items: items.map((e) => e.toDTO()).toList());
}

extension WishListItemV2DTOMapper on WishListItemV2DTO {
  WishListItemV2 toDomain() => WishListItemV2(items: items.map((e) => e.toDomain()).toList());
}

extension WishListItemMapper on WishListItem {
  WishListItemDTO toDTO() => WishListItemDTO(
        id: id,
        quantity: quantity,
        product: product.toDTO(),
      );
}

extension WishListItemDTOMapper on WishListItemDTO {
  WishListItem toDomain() => WishListItem(
        id: id,
        quantity: quantity,
        product: product.toDomain(),
      );
}

extension WishListCreateResponseMapper on WishListCreateResponse {
  WishListCreateResponseDTO toDTO() => WishListCreateResponseDTO(
        id: id,
        name: name,
        visibility: visibility,
        itemsCount: itemsCount,
      );
}

extension WishListCreateResponseDTOMapper on WishListCreateResponseDTO {
  WishListCreateResponse toDomain() => WishListCreateResponse(
        id: id,
        name: name,
        visibility: visibility,
        itemsCount: itemsCount,
      );
}

extension MapperLocalizationItemDTO on LocalizationItemDTO {
  LocalizationItem toDomain() => LocalizationItem(
        code: code,
        label: label,
      );
}

extension MapperLocalizationItem on LocalizationItem {
  LocalizationItemDTO toDTO() => LocalizationItemDTO(
        code: code,
        label: label,
      );
}

extension MapperAvailablePaymentMethodDTO on AvailablePaymentMethodDTO {
  AvailablePaymentMethod toDomain() => AvailablePaymentMethod(
        code: code,
        title: title,
      );
}

extension MapperAvailablePaymentMethod on AvailablePaymentMethod {
  AvailablePaymentMethodDTO toDTO() => AvailablePaymentMethodDTO(
        code: code,
        title: title,
      );
}

extension MapperComplementShareProductDTO on ComplementShareProductDTO {
  ComplementSharedProduct toDomain() => ComplementSharedProduct(url, initialMessage.toDomain());
}

extension MapperPurseInfoListDto on PurseInfoListDto {
  PurseInfoEntityList toDomain() => PurseInfoEntityList(
        purseInfoList: purseInfoList.map((e) => e.toDomain()).toList(),
        userId: userId,
      );
}

extension MapperPurseInfoListEntity on PurseInfoEntityList {
  PurseInfoListDto toDto() => PurseInfoListDto(
        purseInfoList: purseInfoList.map((e) => e.toDto()).toList(),
        userId: userId,
      );
}

extension MapperPurseInfoDto on PurseInfoDto {
  PurseInfoEntity toDomain() => PurseInfoEntity(
        purseId: purseId,
        balance: balance,
      );
}

extension MapperPurseInfoEntity on PurseInfoEntity {
  PurseInfoDto toDto() => PurseInfoDto(
        purseId: purseId,
        balance: balance,
      );
}

extension MapperMoneyInfoToDomain on MoneyInfoDTO {
  MoneyInfo toDomain() => MoneyInfo(
        label: label,
        money: moneyDTO.toDomain(),
      );
}

extension MapperMoneyInfoToDTO on MoneyInfo {
  MoneyInfoDTO toDTO() => MoneyInfoDTO(
        label: label,
        moneyDTO: money.toDTO(),
      );
}

extension MapperMoneyDTO on Money {
  MoneyDTO toDTO() => MoneyDTO(
        value: value,
        currency: currency,
      );
}

extension MapperRefundableFeeDTO on RefundableFeeDTO {
  RefundableFeeEntity toDomain() => RefundableFeeEntity(value: value);
}

extension MapperRefundableFeeEntity on RefundableFeeEntity {
  RefundableFeeDTO toDTO() => RefundableFeeDTO(value: value);
}

extension MapperMoney on MoneyDTO {
  Money toDomain() => Money(
        value: value,
        currency: currency,
      );
}

extension MapperOrderEdited on OrdersEditedDTO {
  OrdersEditedEntity toDomain() => OrdersEditedEntity(
        orders: orders.map((e) => e.toDomain()).toList(),
      );
}

extension MapperOrderEditedDTO on OrderEditedDTO {
  OrderEditedEntity toDomain() => OrderEditedEntity(
        orderId: orderId,
        deletedProducts: deletedProducts.toDomain(),
        editedProducts: editedProducts.toDomain(),
        addedProducts: addedProducts.toDomain(),
      );
}

extension MapperOrderItemDeletedEditedDTO on OrderItemDeletedEditedDTO {
  OrderItemDeletedEditedEntity toDomain() => OrderItemDeletedEditedEntity(
        totalCount: totalCount,
        items: items.map((e) => e.toDomain()).toList(),
      );
}

extension MapperOrderItemEditedDTO on OrderItemEditedDTO {
  OrderItemEditedEntity toDomain() => OrderItemEditedEntity(
        totalCount: totalCount,
        items: items.map((e) => e.toDomain()).toList(),
      );
}

extension MapperOrderItemAddedDTO on OrderItemAddedDTO {
  OrderItemAddedEntity toDomain() => OrderItemAddedEntity(
        totalCount: totalCount,
        items: items.map((e) => e.toDomain()).toList(),
      );
}

extension MapperOrderItemModifiedDTO on OrderItemModifiedDTO {
  OrderItemModifiedEntity toDomain() => OrderItemModifiedEntity(
        productName: productName,
        productSku: productSku,
        productUrlKey: productUrlKey,
        productImage: productImage,
        salesUnitOfMeasure: salesUnitOfMeasure ?? "",
        productQty: productQty,
        productSalePrice: productSalePrice?.toDomain(),
        productSaleRowTotal: productSaleRowTotal?.toDomain(),
        productSaleTaxPrice: productSaleTaxPrice?.toDomain(),
      );
}

extension BalanceLoyaltyWalletToDTO on BalanceLoyaltyWallet {
  BalanceLoyaltyWalletDTO toDTO() {
    return BalanceLoyaltyWalletDTO(balance: balance);
  }
}

extension BalanceLoyaltyWalletDTOToWallet on BalanceLoyaltyWalletDTO {
  BalanceLoyaltyWallet toDomain() {
    return BalanceLoyaltyWallet(balance: balance);
  }
}

extension LoyaltyWalletCredentialToDTO on LoyaltyWalletCredential {
  LoyaltyWalletCredentialDTO toDTO() {
    return LoyaltyWalletCredentialDTO(
      cardNumber: cardNumber,
      cardBirthDate: cardBirthDate,
      customerEmail: customerEmail,
    );
  }
}

extension DTOToLoyaltyWalletCredential on LoyaltyWalletCredentialDTO {
  LoyaltyWalletCredential toDomain() {
    return LoyaltyWalletCredential(
      cardNumber: cardNumber,
      cardBirthDate: cardBirthDate,
      customerEmail: customerEmail,
    );
  }
}

extension LoyaltyWalletTransactionToDTO on LoyaltyWalletTransaction {
  LoyaltyWalletTransactionDTO toDTO() {
    return LoyaltyWalletTransactionDTO(
      date: date,
      name: name,
      spent: spent,
      earned: earned,
    );
  }
}

extension LoyaltyWalletTransactionDTOToDomain on LoyaltyWalletTransactionDTO {
  LoyaltyWalletTransaction toDomain() {
    return LoyaltyWalletTransaction(
      date: date,
      name: name,
      spent: spent,
      earned: earned,
    );
  }
}

extension HtmlDTOMapper on HtmlDTO {
  HtmlEntity toDomain() => HtmlEntity(
        identifier: identifier,
        urlKey: urlKey,
        title: title,
        content: content,
        contentHeading: contentHeading,
        pageLayout: pageLayout,
        metaTitle: metaTitle,
        metaDescription: metaDescription,
        metaKeywords: metaKeywords,
      );
}

extension CustomAttributeMapper on CustomAttribute {
  CustomAttributeDTO toDTO() => CustomAttributeDTO(
        code: code.value,
        value: value,
      );
}

extension ShippingMethodsMapperDTO on ShippingMethodsDTO {
  ShippingMethodsEntity toDomain() => ShippingMethodsEntity(
        items: items.map((e) => e.toDomain()).toList(),
      );
}

extension ShippingMethodIemDTOMapperDTO on ShippingMethodItemDTO {
  ShippingMethodItemEntity toDomain() => ShippingMethodItemEntity(
        code: code,
        name: name,
        message: message,
      );
}

extension ShippingMethodIemEntityMapperDTO on ShippingMethodItemEntity {
  ShippingMethodItemDTO toDTO() => ShippingMethodItemDTO(
        code: code,
        name: name,
        message: message,
      );
}

extension DropdownOptionDTOMapper on DropdownOptionDTO {
  DropdownOption toDomain() {
    return when(
        standard: (code, nameEn, nameEs) => DropdownOption(
              code: code,
              nameEn: nameEn,
              nameEs: nameEs,
            ),
        withShortName: (code, nameEn, nameEs, shortNameEn, shortNameEs) => DropdownOptionWithShortName(
              code: code,
              nameEn: nameEn,
              nameEs: nameEs,
              shortNameEn: (this as WithShortNameDropdownOptionDTO).shortNameEn,
              shortNameEs: (this as WithShortNameDropdownOptionDTO).shortNameEs,
            ),
        countryCode: (code, nameEn, nameEs, countryCode) => DropdownOptionCountryCode(
              code: code,
              nameEn: nameEn,
              nameEs: nameEs,
              countryCode: (this as CountryCodeDropdownOptionDTO).countryCode,
            ),
        child: (code, nameEn, nameEs, parentCode) => DropdownOptionChild(
              code: code,
              nameEn: nameEn,
              nameEs: nameEs,
              parentCode: (this as ChildDropdownOptionDTO).parentCode,
            ));
  }
}

extension WarehouseDTOToDomain on WareHouseAddressDTO {
  WareHouseAddressEntity toDomain() {
    return WareHouseAddressEntity(
      id: id,
      name: name,
      code: code,
      status: status,
      address: address,
      schedule: schedule,
      telephone: telephone,
      latitude: latitude,
      longitude: longitude,
      countryId: countryId,
      stateId: stateId,
      stateName: stateName,
      cityId: cityId,
      cityName: cityName,
      zoneId: zoneId,
      zoneName: zoneName,
      createdAt: createdAt,
      postCode: "00000",
    );
  }
}

extension DeleteCustomerInputExtension on DeleteCustomerInputDTO {
  DeleteCustomerInput toDomain() {
    return DeleteCustomerInput(
      password: password,
    );
  }
}

extension DeleteCustomerInputDTOExtension on DeleteCustomerInput {
  DeleteCustomerInputDTO toDTO() {
    return DeleteCustomerInputDTO(
      password: password,
    );
  }
}
