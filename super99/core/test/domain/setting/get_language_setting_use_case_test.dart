import 'package:core/domain/entity/language.dart';
import 'package:core/domain/use_case/setting/get_language_setting_use_case.dart';
import 'package:core/utils/loggers/app_logger.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:dartz/dartz.dart';
import 'package:core/data/repository/setting/setting_repository.dart';
import 'package:core/domain/entity/language_setting.dart';
import 'package:core/utils/error_handler/error_handler.dart';

class MockSettingRepository extends Mock implements SettingRepository {}

void main() {
  late GetLanguageSettingUseCase getLanguageSettingUseCase;
  late MockSettingRepository mockSettingRepository;

  setUp(() async {
    await LoggerApp().init(isDebug: false, isTest: true);
    mockSettingRepository = MockSettingRepository();
    getLanguageSettingUseCase = GetLanguageSettingUseCase(mockSettingRepository);
  });

  test('returns LanguageSetting on successful retrieval', () async {
    final languageSetting = LanguageSetting(
      languagesAvailable: [Language(code: 'es', name: 'Spanish'), Language(code: 'en', name: 'English')],
      languageSelected: Language(code: 'es', name: 'Spanish'),
    );
    when(() => mockSettingRepository.getLanguageSetting()).thenAnswer((_) async => right(languageSetting));

    final result = await getLanguageSettingUseCase.call();

    expect(result, equals(right(languageSetting)));
  });

  test('returns ErrorHandler on failure', () async {
    when(() => mockSettingRepository.getLanguageSetting())
        .thenAnswer((_) async => left(ErrorHandlerInternal(errorMessage: 'Mock Error')));

    final result = await getLanguageSettingUseCase.call();

    expect(result, equals(left(ErrorHandlerInternal(errorMessage: 'Mock Error'))));
  });
}
