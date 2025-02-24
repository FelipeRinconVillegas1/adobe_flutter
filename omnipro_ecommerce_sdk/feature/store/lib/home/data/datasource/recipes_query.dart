///░█▀▀█ ░█─░█ ░█▀▀▀ ░█▀▀█ ░█──░█
///░█─░█ ░█─░█ ░█▀▀▀ ░█▄▄▀ ░█▄▄▄█
///─▀▀█▄ ─▀▄▄▀ ░█▄▄▄ ░█─░█ ──░█──

String recipesQuery({
  required int entityId,
  required int pageSize,
  required int currentPage,
}) =>
    '''
  {
    recipes(
      entityId: $entityId
      pageSize: $pageSize
      currentPage: $currentPage
    ) {
      total_count
      items {
        name
        image
        product_link
        sku
      }
    }
  }
''';
