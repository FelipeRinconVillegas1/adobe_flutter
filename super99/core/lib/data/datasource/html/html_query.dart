// __  __ _    _ _______    _______ _____ ____  _   _
// |  \/  | |  | |__   __|/\|__   __|_   _/ __ \| \ | |
// | \  / | |  | |  | |  /  \  | |    | || |  | |  \| |
// | |\/| | |  | |  | | / /\ \ | |    | || |  | | . ` |
// | |  | | |__| |  | |/ ____ \| |   _| || |__| | |\  |
// |_|  |_|\____/   |_/_/    \_\_|  |_____\____/|_| \_|

String getCmsPageQuery(String identifier) => '''
{
  cmsPage(identifier: "$identifier") {
    identifier
    url_key
    title
    content
    content_heading
    page_layout
    meta_title
    meta_description
    meta_keywords
  }
}
''';
