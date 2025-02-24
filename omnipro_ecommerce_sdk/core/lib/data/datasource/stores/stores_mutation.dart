String saveFavoriteStoreMutation(String code) => '''
mutation {
  saveFavoriteStore(store_code: "$code") {
    success
  }
}
''';