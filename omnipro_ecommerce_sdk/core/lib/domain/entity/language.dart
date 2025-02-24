import 'package:equatable/equatable.dart';

class Language extends Equatable {
  final String code;
  final String name;

  const Language({
    required this.code,
    required this.name,
  });

  Language.fromCode(this.code)
      : name = code == 'es'
            ? 'Spanish'
            : code == 'en'
                ? 'English'
                : 'Unknown';

  @override
  List<Object?> get props => [code];
}
