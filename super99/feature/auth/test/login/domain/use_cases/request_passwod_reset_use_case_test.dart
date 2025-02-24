import 'package:auth/login/data/repository/auth_repository.dart';
import 'package:auth/login/domain/use_case/request_passwod_reset_use_case.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockAuthRepository extends Mock implements AuthRepository {}

void main() {
  late RequestPasswordResetUseCase useCase;
  late AuthRepository mockAuthRepository;

  setUp(() async {
    mockAuthRepository = MockAuthRepository();
    useCase = RequestPasswordResetUseCase(mockAuthRepository);
  });

  group('RequestPasswordResetUseCase', () {
    const email = 'test@example.com';

    test('should return Right(true) when password reset request is successful', () async {
      // Arrange
      when(() => mockAuthRepository.requestPasswordResetEmail(email)).thenAnswer((_) async => const Right(true));

      // Act
      final result = await useCase.call(email);

      // Assert
      expect(result, equals(const Right(true)));
      verify(() => mockAuthRepository.requestPasswordResetEmail(email)).called(1);
    });

    test('should return Left(ErrorHandler) when password reset request fails', () async {
      // Arrange
      final errorHandler = ErrorHandlerInternal(errorMessage: 'Failed to reset password');
      when(() => mockAuthRepository.requestPasswordResetEmail(email)).thenAnswer((_) async => Left(errorHandler));

      // Act
      final result = await useCase.call(email);

      // Assert
      expect(result, equals(Left(errorHandler)));
      verify(() => mockAuthRepository.requestPasswordResetEmail(email)).called(1);
    });
  });
}
