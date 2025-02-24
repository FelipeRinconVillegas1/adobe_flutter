import 'package:core/data/datasource/remote_config_datasource.dart';
import 'package:core/data/dto/products_dto.fr.dart';
import 'package:core/data/dto/products_mapper.dart';
import 'package:core/data/dto/products_search_dto.fr.dart';
import 'package:core/data/repository/remote_config_key.dart';
import 'package:core/domain/entity/products_search_entity.dart';
import 'package:store/search_product/data/datasource/search_product_datasource.dart';
import 'package:core/domain/entity/products.dart';
import 'package:core/utils/error_handler/error_code.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:store/search_product/data/dto/mapper.dart';
import 'package:store/search_product/data/repository/search_product_respository.dart';

import '../../search_product_fake.dart';

class MockSearchProductDataSource extends Mock implements SearchProductDataSource {}

class MockRemoteConfigDataSource extends Mock implements RemoteConfigDataSource {}

void main() {
  late SearchProductDataSource productsDataSource;
  late SearchProductRepository searchProductRepository;
  late RemoteConfigDataSource remoteConfigDataSource;
  setUp(() async {
    productsDataSource = MockSearchProductDataSource();
    remoteConfigDataSource = MockRemoteConfigDataSource();
    searchProductRepository = SearchProductRepositoryImpl(productsDataSource, remoteConfigDataSource);
  });
  group('getWaitingTimeSearchProduct', () {
    test("return time in integer from datasource", () async {
      when(() => remoteConfigDataSource.getInt(RemoteConfigKey.waitingTimeProductSearch)).thenReturn(4);
      final result = await searchProductRepository.getWaitingTimeSearchProduct();
      verify(() => remoteConfigDataSource.getInt(RemoteConfigKey.waitingTimeProductSearch)).called(1);
      expect(result.fold((l) => null, (r) => r), equals(4));
    });
    test("'returns an exception when call to remote data source fails'", () async {
      when(() => remoteConfigDataSource.getInt(RemoteConfigKey.waitingTimeProductSearch))
          .thenThrow(ErrorCode.errorGetWaitingTimeSearch);
      final result = await searchProductRepository.getWaitingTimeSearchProduct();
      expect(result.fold((l) => (l as ErrorHandlerExternal).errorCode, (r) => null),
          equals(ErrorCode.errorGetWaitingTimeSearch));
    });
  });
  group('get products by name', () {
    const productName = 'pants';
    test("return products from datasource", () async {
      final productsDTO = ProductsSearchDTO.fromJson(SearchProductXSearchFakeDataByName.succesfullData['xsearchProducts']);
      final products = productsDTO.toDomain();
      when(() => productsDataSource.getProductsByName(productName))
          .thenAnswer((_) async => Right<ErrorHandler, ProductsSearchDTO>(productsDTO));
      final result = await searchProductRepository.getProductsByName(productName);
      verify(() => productsDataSource.getProductsByName(productName)).called(1);
      expect(result.isRight(), true);
      expect(result..fold((l) => null, (r) => r), Right<ErrorHandler, ProductsSearch>(products));
    });
    test('returns ErrorHandler when the datasource fails', () async {
      final error = Exception('Failed to fetch data');
      when(() => productsDataSource.getProductsByName(productName)).thenThrow(error);
      final result = await searchProductRepository.getProductsByName(productName);
      expect(result.fold((l) => (l as ErrorHandlerExternal).errorCode, (r) => null),
          equals(ErrorCode.errorGetSearchProduct));
    });
  });
  group('get products by filter', () {
    const productName = 'pants';
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
    test("return products only with range price from datasource", () async {
      final productsDTO = ProductsDTO.fromJson(SearchProductFakeDataByRangePrice.succesfullData['products']);
      final products = productsDTO.toDomain();
      when(() => productsDataSource.getProductsByFilter(productName, filterPrice, orderProducts))
          .thenAnswer((_) async => Right<ErrorHandler, ProductsDTO>(productsDTO));
      final result = await searchProductRepository.getProductsByFilter(productName, filterPrice, orderProducts);
      verify(() => productsDataSource.getProductsByFilter(productName, filterPrice, orderProducts)).called(1);
      expect(result.isRight(), true);
      expect(result..fold((l) => null, (r) => r), Right<ErrorHandler, Products>(products));
    });

    test("return products only with list ui category from datasource", () async {
      final productsDTO = ProductsDTO.fromJson(SearchProductFakeDataByListUidCategory.succesfullData['products']);
      final products = productsDTO.toDomain();
      when(() => productsDataSource.getProductsByFilter(productName, filterCatgory, orderProducts))
          .thenAnswer((_) async => Right<ErrorHandler, ProductsDTO>(productsDTO));
      final result = await searchProductRepository.getProductsByFilter(productName, filterCatgory, orderProducts);
      verify(() => productsDataSource.getProductsByFilter(productName, filterCatgory, orderProducts)).called(1);
      expect(result.isRight(), true);
      expect(result..fold((l) => null, (r) => r), Right<ErrorHandler, Products>(products));
    });

    test("return products with range price and list ui category from datasource", () async {
      final productsDTO = ProductsDTO.fromJson(SearchProductFakeDataByFullFilter.succesfullData['products']);
      final products = productsDTO.toDomain();
      when(() => productsDataSource.getProductsByFilter(productName, filterFull, orderProducts))
          .thenAnswer((_) async => Right<ErrorHandler, ProductsDTO>(productsDTO));
      final result = await searchProductRepository.getProductsByFilter(productName, filterFull, orderProducts);
      verify(() => productsDataSource.getProductsByFilter(productName, filterFull, orderProducts)).called(1);
      expect(result.isRight(), true);
      expect(result..fold((l) => null, (r) => r), Right<ErrorHandler, Products>(products));
    });

    test('returns ErrorHandler when the datasource fails', () async {
      final error = Exception('Failed to fetch data');
      when(() => productsDataSource.getProductsByFilter(productName, filterFull, orderProducts)).thenThrow(error);
      final result = await searchProductRepository.getProductsByFilter(productName, filterFull, orderProducts);
      expect(result.fold((l) => (l as ErrorHandlerExternal).errorCode, (r) => null),
          equals(ErrorCode.errorGetSearchProduct));
    });
  });
}
