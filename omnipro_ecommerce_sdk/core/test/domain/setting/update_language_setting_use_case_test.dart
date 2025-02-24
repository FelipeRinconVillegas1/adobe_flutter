import 'package:core/domain/entity/language.dart';
import 'package:core/domain/use_case/setting/update_language_setting_use_case.dart';
import 'package:core/utils/loggers/app_logger.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:dartz/dartz.dart';
import 'package:core/data/repository/setting/setting_repository.dart';
import 'package:core/domain/entity/language_setting.dart';
import 'package:core/utils/error_handler/error_handler.dart';

class MockSettingRepository extends Mock implements SettingRepository {}

void main() {
  late UpdateLanguageSettingUseCase updateLanguageSettingUseCase;
  late MockSettingRepository mockSettingRepository;

  setUp(() async {
    await LoggerApp().init(isDebug: false, isTest: true);
    mockSettingRepository = MockSettingRepository();
    updateLanguageSettingUseCase = UpdateLanguageSettingUseCase(mockSettingRepository);
  });

  test('returns updated LanguageSetting on successful update', () async {
    final newLanguageSetting = LanguageSetting(
      languagesAvailable: [Language(code: 'es', name: 'Spanish'), Language(code: 'en', name: 'English')],
      languageSelected: Language(code: 'es', name: 'Spanish'),
    );
    when(() => mockSettingRepository.updateLanguageSetting(newLanguageSetting))
        .thenAnswer((_) async => right(newLanguageSetting));

    final result = await updateLanguageSettingUseCase.call(newLanguageSetting);

    expect(result, equals(right(newLanguageSetting)));
  });

  test('returns ErrorHandler on failure', () async {
    final newLanguageSetting = LanguageSetting(
      languagesAvailable: [Language(code: 'es', name: 'Spanish'), Language(code: 'en', name: 'English')],
      languageSelected: Language(code: 'es', name: 'Spanish'),
    );
    when(() => mockSettingRepository.updateLanguageSetting(newLanguageSetting))
        .thenAnswer((_) async => left(ErrorHandlerInternal(errorMessage: 'Mock Error')));

    final result = await updateLanguageSettingUseCase.call(newLanguageSetting);

    expect(result, equals(left(ErrorHandlerInternal(errorMessage: 'Mock Error'))));
  });
}
