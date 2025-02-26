///░█▀▀█ ░█─░█ ░█▀▀▀ ░█▀▀█ ░█──░█
///░█─░█ ░█─░█ ░█▀▀▀ ░█▄▄▀ ░█▄▄▄█
///─▀▀█▄ ─▀▄▄▀ ░█▄▄▄ ░█─░█ ──░█──

getCategoriesQuery() => '''
query getCategories(\$filter: CategoryFilterInput, \$pageSize: Int, \$currentPage: Int, \$customSorting: Int) {
  categories(filters: \$filter, pageSize: \$pageSize, currentPage: \$currentPage, customSorting: \$customSorting){
    items{
      uid
      level
      name
      id
      app_position
      app_main_image
      app_banner_image
      position
      url_path
      children_count
      include_in_menu
      children{
        uid
        id
        level
        name
        include_in_menu
        position
        url_path
        children_count
        app_position
        app_main_image
        app_banner_image
        children{
          uid
          id
          level
          name
          include_in_menu
          position
          url_path
          children_count
          app_position
          app_main_image
          app_banner_image
        }
      }
    }
    page_info{
      current_page
      page_size
      total_pages
    }
  }
}
''';
