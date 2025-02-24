import 'package:core/data/repository/session/log_out_repository.dart';
import 'package:core/domain/use_case/session/log_out_use_case.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockLogOutRepository extends Mock implements LogOutRepository {}

void main() {
  late LogOutUseCase useCase;
  late MockLogOutRepository mockLoginRepository;

  setUp(() {
    mockLoginRepository = MockLogOutRepository();
    useCase = LogOutUseCase(mockLoginRepository);
  });

  test('call should call logOut method of LoginRepository', () async {
    // Arrange
    when(() => mockLoginRepository.logOut([])).thenAnswer((_) async => () {});

    // Act
    await useCase.call();

    // Assert
    verify(() => mockLoginRepository.logOut([])).called(1);
  });
}
