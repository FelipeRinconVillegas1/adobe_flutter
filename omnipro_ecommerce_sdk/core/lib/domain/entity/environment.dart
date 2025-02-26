enum Environment {
  dev,
  qa,
  staging,
  prod;

  static Environment fromString(String value) {
    switch (value) {
      case 'dev':
        return Environment.dev;
      case 'staging':
        return Environment.staging;
      case 'prod':
        return Environment.prod;
      case 'qa':
        return Environment.qa;
      default:
        return Environment.dev;
    }
  }

  String get name {
    switch (this) {
      case Environment.dev:
        return 'dev';
      case Environment.staging:
        return 'staging';
      case Environment.prod:
        return 'prod';
      case Environment.qa:
        return 'qa';
    }
  }

  bool isDev() => this == Environment.dev;
}
