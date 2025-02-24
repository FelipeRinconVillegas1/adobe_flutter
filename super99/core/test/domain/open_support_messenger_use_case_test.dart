import 'package:core/data/repository/support_messenger_repository.dart';
import 'package:core/domain/use_case/open_chat_messenger_use_case.dart';
import 'package:core/domain/use_case/open_support_messenger_use_case.dart';
import 'package:core/utils/error_handler/error_code.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:core/utils/loggers/app_logger.dart';
import 'package:test/test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:dartz/dartz.dart';

class MockOpenChatMessengerUseCase extends Mock implements OpenChatMessengerUseCase {}

class MockSupportMessengerRepository extends Mock implements SupportMessengerRepository {}

void main() {
  late OpenSupportMessengerUseCase useCase;
  late MockOpenChatMessengerUseCase mockOpenChatMessengerUseCase;
  late MockSupportMessengerRepository mockSupportMessengerRepository;

  setUp(() async {
    await LoggerApp().init(isDebug: false, isTest: true);
    mockOpenChatMessengerUseCase = MockOpenChatMessengerUseCase();
    mockSupportMessengerRepository = MockSupportMessengerRepository();
    useCase = OpenSupportMessengerUseCase(mockOpenChatMessengerUseCase, mockSupportMessengerRepository);
  });

  group('OpenSupportMessengerUseCase', () {
    test('calls getIdFacebook and openChatMessengerUseCase with correct parameters, and returns Right with true',
        () async {
      // Arrange
      final idFacebookPage = 'your_id_facebook';
      when(() => mockSupportMessengerRepository.getIdFacebook()).thenAnswer((_) async => Right(idFacebookPage));
      when(() => mockOpenChatMessengerUseCase.call(idFacebook: idFacebookPage)).thenAnswer((_) async => right(true));

      // Act
      final result = await useCase.call();

      // Assert
      expect(result, equals(right(true)));
      verify(() => mockSupportMessengerRepository.getIdFacebook());
      verify(() => mockOpenChatMessengerUseCase.call(idFacebook: idFacebookPage));
    });

    test('returns Left with ErrorHandler when getIdFacebook returns Left', () async {
      // Arrange
      final errorHandler =
          ErrorHandlerExternal(errorCode: ErrorCode.openSupportChatMessenger, errorMessage: 'Error message');

      when(() => mockSupportMessengerRepository.getIdFacebook()).thenAnswer((_) async => Left(errorHandler));

      // Act
      final result = await useCase.call();

      // Assert
      expect(result, equals(left(errorHandler)));
      verify(() => mockSupportMessengerRepository.getIdFacebook());
      verifyNever(() => mockOpenChatMessengerUseCase.call(idFacebook: any(named: 'idFacebook')));
    });

    test('returns Left with ErrorHandlerExternal when an exception is thrown', () async {
      // Arrange
      final expectedException = Exception('Something went wrong');
      when(() => mockSupportMessengerRepository.getIdFacebook()).thenThrow(expectedException);

      // Act
      final result = await useCase.call();

      // Assert
      expect(
          result,
          equals(left(ErrorHandlerExternal(
            errorCode: ErrorCode.openSupportChatMessenger,
            errorMessage: expectedException.toString(),
          ))));
      verify(() => mockSupportMessengerRepository.getIdFacebook());
      verifyNever(() => mockOpenChatMessengerUseCase.call(idFacebook: any(named: 'idFacebook')));
    });
  });
}
