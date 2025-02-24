import 'package:core/domain/entity/language.dart';
import 'package:core/utils/constants.dart';
import 'package:equatable/equatable.dart';

class LanguageSetting extends Equatable {
  /// List of languages available in the app
  final List<Language> languagesAvailable;

  /// Language selected by the user
  final Language languageSelected;

  const LanguageSetting({
    this.languagesAvailable = const [Constants.spanishLanguage, Constants.englishLanguage],
    required this.languageSelected,
  });

  //Copy with
  LanguageSetting copyWith({
    Language? languageSelected,
  }) {
    return LanguageSetting(
      languagesAvailable: languagesAvailable,
      languageSelected: languageSelected ?? this.languageSelected,
    );
  }

  @override
  List<Object?> get props => [languagesAvailable, languageSelected];
}
