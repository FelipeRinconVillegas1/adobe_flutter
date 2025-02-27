///░█▀▀█ ░█─░█ ░█▀▀▀ ░█▀▀█ ░█──░█
///░█─░█ ░█─░█ ░█▀▀▀ ░█▄▄▀ ░█▄▄▄█
///─▀▀█▄ ─▀▄▄▀ ░█▄▄▄ ░█─░█ ──░█──

String getStatesByIdCountryQuery(String idCountry) => '''
query getStatesQuery(){
  country(id: "$idCountry") {
        available_regions {
            id
            code
            name
        }
    }
}
''';
