import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(valueField: 'value')
enum ProviderAuthentication {
  apple('apple'),
  facebook('facebook'),
  google('google');

  const ProviderAuthentication(this.value);

  final String value;
}
