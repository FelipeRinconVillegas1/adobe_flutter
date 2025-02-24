import 'package:auth/sign_up/data/repository/sign_up_repository.dart';
import 'package:core/domain/entity/provider_auth.dart';
import 'package:core/domain/entity/user_credential_response.dart';
import 'package:auth/sign_up/domain/use_case/get_user_credential_by_social_media.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockSignUpRepository extends Mock implements SignUpRepository {}

void main() {
  late MockSignUpRepository mockRepository;
  late GetUserCredentialBySocialMedia getUserCredentialBySocialMedia;

  setUp(() async {
    mockRepository = MockSignUpRepository();
    getUserCredentialBySocialMedia = GetUserCredentialBySocialMedia(mockRepository);
  });

  test('should get user credential by social media from the repository', () async {
    // Arrange
    const providerAuthentication = ProviderAuthentication.google;
    const expectedResult = UserCredentialResponse(
      sub: 'uid',
      token: 'token',
      provider: ProviderAuthentication.google,
    );
    when(() => mockRepository.getUserCredentialBySocialMedia(providerAuthentication))
        .thenAnswer((_) async => const Right(expectedResult));

    // Act
    final result = await getUserCredentialBySocialMedia.call(providerAuthentication);

    // Assert
    expect(result.fold((l) => null, (r) => r), expectedResult);
    verify(() => mockRepository.getUserCredentialBySocialMedia(providerAuthentication)).called(1);
  });

  test('should return an error when getting user credential by social media', () async {
    // Arrange
    const providerAuthentication = ProviderAuthentication.google;
    final expectedError = ErrorHandlerInternal(
      errorMessage: 'errorMessage',
    );
    when(() => mockRepository.getUserCredentialBySocialMedia(providerAuthentication))
        .thenAnswer((_) async => Left(expectedError));

    // Act
    final result = await getUserCredentialBySocialMedia.call(providerAuthentication);

    //  Assert
    expect(result.fold((l) => l, (r) => null), expectedError);
    verify(() => mockRepository.getUserCredentialBySocialMedia(providerAuthentication)).called(1);
  });
}
