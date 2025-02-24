enum ApiEndpoint {
  getStoreInventory('/rest/V1/getStoreInventory'),
  ;

  final String url;

  const ApiEndpoint(this.url);
}
