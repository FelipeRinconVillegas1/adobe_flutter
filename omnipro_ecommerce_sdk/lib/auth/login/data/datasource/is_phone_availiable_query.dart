String isPhoneAvailableQuery(String phone, String countryCode) {
  return '''
        {
          isTelephoneAvailable(area_code: "$countryCode", telephone: "$phone") {
            is_telephone_available
          }
        }
  ''';
}
