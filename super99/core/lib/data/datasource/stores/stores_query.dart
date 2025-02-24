///░█▀▀█ ░█─░█ ░█▀▀▀ ░█▀▀█ ░█──░█
///░█─░█ ░█─░█ ░█▀▀▀ ░█▄▄▀ ░█▄▄▄█
///─▀▀█▄ ─▀▄▄▀ ░█▄▄▄ ░█─░█ ──░█──

String getWarehousesQuery() => '''
query getWarehouses(
    \$filter: WarehouseFilterInput
    \$pageSize: Int
    \$currentPage: Int
    \$sort: WarehouseSortInput
) {
    warehouses(
        pageSize: \$pageSize
        currentPage: \$currentPage
        filter: \$filter
        sort: \$sort
    ) {
        total_count
        items ${_storeParams()}
        page_info {
            page_size
            current_page
            total_pages
        }
    }
}
''';

String getFavoriteStoreQuery() => '''
{
  favoriteStore {
    item ${_storeParams()}
  }
}
''';

String _storeParams() => '''
{
      id
      name
      code
      address
      schedule
      telephone
      longitude
      latitude
      country_id
      state_id
      state_name
      city_id
      city_name
      zone_id
      zone_name
      status
      created_at
}
''';
