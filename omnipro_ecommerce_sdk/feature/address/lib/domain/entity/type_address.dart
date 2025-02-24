import 'package:core/domain/entity/dropdown_manager/dropdown_option.dart';

enum TypeAddressCode {
  home('7600'),
  apartment('7606'),
  office('7623'),
  shop('7603');

  const TypeAddressCode(this.code);
  final String code;

  static TypeAddressCode getByCode(String code) {
    return TypeAddressCode.values.firstWhere((element) => element.code == code, orElse: () => TypeAddressCode.home);
  }
}

class TypeAddress extends DropdownOption {
  const TypeAddress({required super.code, required super.nameEn, required super.nameEs});

  static List<TypeAddress> get options => [
        TypeAddress(code: TypeAddressCode.home.code, nameEn: 'Home', nameEs: 'Casa'),
        TypeAddress(code: TypeAddressCode.office.code, nameEn: 'Office', nameEs: 'Oficina'),
        TypeAddress(code: TypeAddressCode.shop.code, nameEn: 'Shop', nameEs: 'Local'),
        TypeAddress(code: TypeAddressCode.apartment.code, nameEn: 'Department', nameEs: 'Apartamento'),
      ];

  static TypeAddress getByCode(String code) {
    return options.firstWhere((element) => element.code == code, orElse: () => options[options.length - 1]);
  }
}
