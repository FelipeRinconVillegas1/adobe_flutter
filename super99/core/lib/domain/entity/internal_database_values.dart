enum InternalDatabaseTableNames {
  config('config', []),
  store(
    'store',
    [
      InternalDatabaseKeys.recentViewedStores,
    ],
  ),
  dropdownOption('dropdownOptions', [
    InternalDatabaseKeys.providences,
    InternalDatabaseKeys.maritalStates,
    InternalDatabaseKeys.buyingPreferences,
    InternalDatabaseKeys.howHeardAboutLoyaltyProgram,
    InternalDatabaseKeys.documentTypes
  ]);

  const InternalDatabaseTableNames(this.value, this.keys);

  final String value;
  final List<InternalDatabaseKeys> keys;
}

enum InternalDatabaseKeys {
  recentViewedStores('recentViewedStores'),
  providences('providences'),
  maritalStates('maritalStates'),
  buyingPreferences('buyingPreferences'),
  howHeardAboutLoyaltyProgram('howHeardAboutLoyaltyProgram'),
  documentTypes('documentTypes');

  const InternalDatabaseKeys(this.value);

  final String value;
}
