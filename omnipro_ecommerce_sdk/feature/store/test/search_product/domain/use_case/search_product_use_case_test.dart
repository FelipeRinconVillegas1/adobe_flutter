import 'package:core/data/dto/products_dto.fr.dart';
import 'package:core/data/dto/products_mapper.dart';
import 'package:core/data/dto/products_search_dto.fr.dart';
import 'package:core/domain/entity/products.dart';
import 'package:core/domain/entity/products_search_entity.dart';
import 'package:core/utils/error_handler/error_code.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:store/search_product/data/dto/mapper.dart';
import 'package:store/search_product/data/repository/search_product_respository.dart';
import 'package:store/search_product/domain/use_case/get_products_by_filter_use_case.dart';
import 'package:store/search_product/domain/use_case/get_products_by_name_use_case.dart';
import '../../search_product_fake.dart';

class MockSearchProductRepository extends Mock implements SearchProductRepository {}

void main() {
  late SearchProductRepository searchProductRepository;
  late GetProductsByNameUseCase getProductsByNameUseCase;
  late GetProductsByFilterUseCase getProductsByNamePriceUseCase;
  const priceFrom = "0";
  const priceTo = "1000000";
  const List<String> listUidCategory = ["Nw==", "NA=="];
  Map<String, dynamic> filterPrice = {
    "price": {"from": priceTo, "to": priceFrom},
    "category_uid": {"in": []}
  };
  Map<String, dynamic> filterFull = {
    "price": {"from": priceTo, "to": priceFrom},
    "category_uid": {"in": listUidCategory}
  };
  Map<String, dynamic> filterCatgory = {
    "price": {
      "from": "",
      "to": "",
      "category_uid": {"in": listUidCategory}
    }
  };
  Map<String, dynamic> orderProducts = {'relevance': 'ASC'};
  setUp(() async {
    searchProductRepository = MockSearchProductRepository();
    getProductsByNameUseCase = GetProductsByNameUseCase(searchProductRepository);
    getProductsByNamePriceUseCase = GetProductsByFilterUseCase(searchProductRepository);
  });

  group('get products by name', () {
    const productName = 'pants';
    test("return products from repository", () async {
      final productsDTO = ProductsSearchDTO.fromJson(SearchProductXSearchFakeDataByName.succesfullData['xsearchProducts']);
      final products = productsDTO.toDomain();
      when(() => searchProductRepository.getProductsByName(productName))
          .thenAnswer((_) async => Right<ErrorHandler, ProductsSearch>(products));
      final result = await getProductsByNameUseCase.call(productName);
      verify(() => searchProductRepository.getProductsByName(productName)).called(1);
      expect(result.isRight(), true);
      expect(result..fold((l) => null, (r) => r), Right<ErrorHandler, ProductsSearch>(products));
    });
    test('returns ErrorHandler when the repository fails', () async {
      final error = Exception('Failed to fetch data');
      when(() => searchProductRepository.getProductsByName(productName)).thenThrow(error);
      final result = await getProductsByNameUseCase.call(productName);
      expect(result.fold((l) => (l as ErrorHandlerExternal).errorCode, (r) => null),
          equals(ErrorCode.errorGetSearchProduct));
    });
  });

  group('get products by filter', () {
    const productName = 'pants';

    test("return products from repository by only name and range price", () async {
      final productsDTO = ProductsDTO.fromJson(SearchProductFakeDataByRangePrice.succesfullData['products']);
      final products = productsDTO.toDomain();
      when(() => searchProductRepository.getProductsByFilter(productName, filterPrice, orderProducts))
          .thenAnswer((_) async => Right<ErrorHandler, Products>(products));
      final result = await getProductsByNamePriceUseCase.call(
          productName: productName, filters: filterPrice, orderProducts: orderProducts);
      verify(() => searchProductRepository.getProductsByFilter(productName, filterPrice, orderProducts)).called(1);
      expect(result.isRight(), true);
      expect(result..fold((l) => null, (r) => r), Right<ErrorHandler, Products>(products));
    });

    test("return products from repository by only name and list uid category", () async {
      final productsDTO = ProductsDTO.fromJson(SearchProductFakeDataByListUidCategory.succesfullData['products']);
      final products = productsDTO.toDomain();
      when(() => searchProductRepository.getProductsByFilter(productName, filterCatgory, orderProducts))
          .thenAnswer((_) async => Right<ErrorHandler, Products>(products));
      final result = await getProductsByNamePriceUseCase.call(
          productName: productName, filters: filterCatgory, orderProducts: orderProducts);
      verify(() => searchProductRepository.getProductsByFilter(productName, filterCatgory, orderProducts)).called(1);
      expect(result.isRight(), true);
      expect(result..fold((l) => null, (r) => r), Right<ErrorHandler, Products>(products));
    });

    test("return products from repository by  name, range price and  list uid category", () async {
      final productsDTO = ProductsDTO.fromJson(SearchProductFakeDataByFullFilter.succesfullData['products']);
      final products = productsDTO.toDomain();
      when(() => searchProductRepository.getProductsByFilter(productName, filterFull, orderProducts))
          .thenAnswer((_) async => Right<ErrorHandler, Products>(products));
      final result = await getProductsByNamePriceUseCase.call(
          productName: productName, filters: filterFull, orderProducts: orderProducts);
      verify(() => searchProductRepository.getProductsByFilter(productName, filterFull, orderProducts)).called(1);
      expect(result.isRight(), true);
      expect(result..fold((l) => null, (r) => r), Right<ErrorHandler, Products>(products));
    });
    test('returns ErrorHandler when the repository fails by filter', () async {
      final error = Exception('Failed to fetch data');
      when(() => searchProductRepository.getProductsByFilter(productName, filterFull, orderProducts)).thenThrow(error);
      final result = await getProductsByNamePriceUseCase.call(
          productName: productName, filters: filterFull, orderProducts: orderProducts);
      expect(result.fold((l) => (l as ErrorHandlerExternal).errorCode, (r) => null),
          equals(ErrorCode.errorGetSearchProduct));
    });
  });
}
