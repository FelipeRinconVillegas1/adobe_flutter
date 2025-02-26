import 'package:core/utils/error_handler/error_code.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:omnipro_ecommerce_sdk/store/search_product/data/repository/search_product_respository.dart';
import 'package:omnipro_ecommerce_sdk/store/search_product/domain/use_case/get_waiting_time_serach_product.dart';

class MockSearchProductRepository extends Mock implements SearchProductRepository {}

void main() {
  late SearchProductRepository searchProductRepository;
  late GetWaitingTimeSearchProductsUseCase getWaitingTimeSearchProductsUseCase;
  setUp(() async {
    searchProductRepository = MockSearchProductRepository();
    getWaitingTimeSearchProductsUseCase = GetWaitingTimeSearchProductsUseCase(searchProductRepository);
  });

  group('getWaitingTimeSearchProductsUseCase', () {
    test("return time from repository", () async {
      when(() => searchProductRepository.getWaitingTimeSearchProduct())
          .thenAnswer((_) async => const Right<ErrorHandler, int>(3));
      final result = await getWaitingTimeSearchProductsUseCase.call();
      verify(() => searchProductRepository.getWaitingTimeSearchProduct()).called(1);
      expect(result.isRight(), true);
      expect(result..fold((l) => null, (r) => r), const Right<ErrorHandler, int>(3));
    });
    test('returns ErrorHandler when the repository fails', () async {
      final error = Exception('Failed to fetch data');
      when(() => searchProductRepository.getWaitingTimeSearchProduct()).thenThrow(error);
      final result = await getWaitingTimeSearchProductsUseCase.call();
      expect(result.fold((l) => (l as ErrorHandlerExternal).errorCode, (r) => null),
          equals(ErrorCode.errorGetWaitingTimeSearch));
    });
  });
}
