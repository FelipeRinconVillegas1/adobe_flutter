import 'package:auth/login/domain/use_case/get_session_customer_use_case.dart';
import 'package:core/local/data/repository/secure_storege_repository.dart';
import 'package:core/local/key_secure_storage.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockSecureStorageRepository extends Mock implements SecureStorageRepository {}

void main() {
  late MockSecureStorageRepository mockRepository;
  late GetSessionUseCase getSessionUseCase;

  setUp(() {
    mockRepository = MockSecureStorageRepository();
    getSessionUseCase = GetSessionUseCase(mockRepository);
  });

  test('should return session data successfully', () async {
    // Arrange
    const sessionData = 'session_data';

    when(() => mockRepository.getData(KeySecureStorage.sessionData)).thenAnswer((_) async => sessionData);

    // Act
    final result = await getSessionUseCase.call();

    // Assert
    expect(result, sessionData);
    verify(() => mockRepository.getData(KeySecureStorage.sessionData)).called(1);
  });
}
