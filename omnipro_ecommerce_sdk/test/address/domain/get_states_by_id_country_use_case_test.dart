import 'package:core/domain/entity/state_country_entity.dart';
import 'package:core/domain/entity/states_country.dart';
import 'package:core/utils/error_handler/error_code.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:omnipro_ecommerce_sdk/address/lib/data/repository/address_repository.dart';
import 'package:omnipro_ecommerce_sdk/address/lib/domain/use_case/get_states_by_id_country_use_case.dart';

class MockAddressRepository extends Mock implements AddressRepository {}

void main() {
  late GetStatesByIdCountryUseCase getStatesByIdCountryUseCase;
  late MockAddressRepository mockAddressRepository;
  String idCountry = 'MX';
  List<StateCountryEntity> listStatesMock = [
    const StateCountryEntity(code: 'AGU', name: 'Aguascalientes', id: 2803),
    const StateCountryEntity(code: 'BCN', name: 'Baja California', id: 2806)
  ];
  StatesCountry statesCountryEntity = StatesCountry(statesCountry: listStatesMock);
  setUp(() async {
    mockAddressRepository = MockAddressRepository();
    getStatesByIdCountryUseCase = GetStatesByIdCountryUseCase(mockAddressRepository);
  });

  group('GetStatesByIdCountryUseCase', () {
    test('return  get states by id country', () async {
      when(() => mockAddressRepository.getStatesByIdCountry(idCountry))
          .thenAnswer((_) async => Right<ErrorHandler, StatesCountry>(statesCountryEntity));
      final result = await getStatesByIdCountryUseCase.call(idCountry);
      verify(() => mockAddressRepository.getStatesByIdCountry(idCountry)).called(1);
      expect(result.isRight(), true);
      expect(result..fold((l) => null, (r) => r), Right<ErrorHandler, StatesCountry>(statesCountryEntity));
    });

    test('returns ErrorHandler when the repository fails', () async {
      final error = Exception('Failed to fetch data');
      when(() => mockAddressRepository.getStatesByIdCountry(idCountry)).thenThrow(error);
      final result = await getStatesByIdCountryUseCase.call(idCountry);
      expect(result.fold((l) => (l as ErrorHandlerExternal).errorCode, (r) => null),
          equals(ErrorCode.errorGetStatesCountry));
    });
  });
}
