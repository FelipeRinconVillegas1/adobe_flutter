import 'package:core/data/dto/products_dto.fr.dart';
import 'package:core/network/graphql/graphql_service.dart';
import 'package:core/network/graphql_helper_test.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:store/search_product/data/datasource/search_product_datasource.dart';
import '../../search_product_fake.dart';

class MockGraphQLService extends Mock implements GraphQLService {}
class MockGraphQLServiceNoAuthenticated extends Mock implements GraphQLService {}

void main() {
  late GraphQLService graphQLService;
  late GraphQLService graphQLServiceNoAuthenticated;
  late SearchProductDataSource searchProductDataSource;
  late MockGraphQLClient mockGraphQLClient;
  Map<String, dynamic> orderProducts = {'relevance': 'ASC'};
  setUp(() async {
    graphQLService = MockGraphQLService();
    graphQLServiceNoAuthenticated = MockGraphQLServiceNoAuthenticated();
    mockGraphQLClient = generateMockGraphQLClient();
    searchProductDataSource = SearchProductDataSourceImpl(graphQLService,graphQLServiceNoAuthenticated);
  });

  group('get products by name', () {
    const productName = 'pants';
    test("return products from service", () async {
      final resultQuery = generateMockQuery<ProductsDTO>(
        mockGraphQLClient,
        response: SearchProductFakeDataByName.succesfullData,
      );
      final productsDTO = ProductsDTO.fromJson(SearchProductFakeDataByName.succesfullData['products']);
      when(() => graphQLService.query(any(), variables: {"filter": {}}))
          .thenAnswer((invocation) async => Right(resultQuery));
      final result = await searchProductDataSource.getProductsByName(productName);
      verify(() => graphQLService.query(any(), variables: {"filter": {}})).called(1);

      expect(result.isRight(), true);
      expect(result..fold((l) => null, (r) => r), Right(productsDTO));
    });
    test('returns ErrorHandler when the server call fails', () async {
      // arrange
      final expected = left(ErrorHandlerInternal(
        errorMessage: 'Server error',
      ));
      when(() => graphQLService.query(any(), variables: {"filter": {}}))
          .thenAnswer((_) async => Left(ErrorHandlerInternal(
                errorMessage: 'Server error',
              )));

      // act
      final result = await searchProductDataSource.getProductsByName(productName);

      // assert
      verify(() => graphQLService.query(any(), variables: {"filter": {}})).called(1);
      expect(result, expected);
    });
  });
  group('get products by name, price and list uid category', () {
    const productName = 'pants';
    const priceFrom = "0";
    const priceTo = "1000000";
    const List<String> listUidCategory = ["Nw==", "NA=="];
    test("return products from service by only name and range price", () async {
      final resultQuery = generateMockQuery<ProductsDTO>(
        mockGraphQLClient,
        response: SearchProductFakeDataByRangePrice.succesfullData,
      );
      final productsDTO = ProductsDTO.fromJson(SearchProductFakeDataByRangePrice.succesfullData['products']);
      when(() => graphQLService.query(any(), variables: {
            "filter": {
              "price": {"from": priceFrom, "to": priceTo},
              "category_uid": {"in": []}
            }
          })).thenAnswer((invocation) async => Right(resultQuery));
      final result = await searchProductDataSource.getProductsByFilter(productName, {}, orderProducts);
      verify(() => graphQLService.query(any(), variables: {
            "filter": {
              "price": {"from": priceFrom, "to": priceTo},
              "category_uid": {"in": []}
            }
          })).called(1);

      expect(result.isRight(), true);
      expect(result..fold((l) => null, (r) => r), Right(productsDTO));
    });

    test("return products from service by only name and list uid category", () async {
      final resultQuery = generateMockQuery<ProductsDTO>(
        mockGraphQLClient,
        response: SearchProductFakeDataByListUidCategory.succesfullData,
      );
      final productsDTO = ProductsDTO.fromJson(SearchProductFakeDataByListUidCategory.succesfullData['products']);
      when(() => graphQLService.query(any(), variables: {
            "filter": {
              "price": {"from": "", "to": ""},
              "category_uid": {"in": listUidCategory}
            }
          })).thenAnswer((invocation) async => Right(resultQuery));
      final result = await searchProductDataSource.getProductsByFilter(
          productName,
          {
            "price": {"from": "", "to": ""},
            "category_uid": {"in": listUidCategory}
          },
          orderProducts);
      verify(() => graphQLService.query(any(), variables: {
            "filter": {
              "price": {"from": "", "to": ""},
              "category_uid": {"in": listUidCategory}
            }
          })).called(1);

      expect(result.isRight(), true);
      expect(result..fold((l) => null, (r) => r), Right(productsDTO));
    });

    test("return products from service by name, range price and list uid category", () async {
      final resultQuery = generateMockQuery<ProductsDTO>(
        mockGraphQLClient,
        response: SearchProductFakeDataByFullFilter.succesfullData,
      );
      final productsDTO = ProductsDTO.fromJson(SearchProductFakeDataByFullFilter.succesfullData['products']);
      when(() => graphQLService.query(any(), variables: {
            "filter": {
              "price": {"from": priceFrom, "to": priceTo},
              "category_uid": {"in": listUidCategory}
            }
          })).thenAnswer((invocation) async => Right(resultQuery));
      final result = await searchProductDataSource.getProductsByFilter(
          "",
          {
            "price": {"from": "", "to": ""},
            "category_uid": {"in": listUidCategory}
          },
          orderProducts);
      verify(() => graphQLService.query(any(), variables: {
            "filter": {
              "price": {"from": priceFrom, "to": priceTo},
              "category_uid": {"in": listUidCategory}
            }
          })).called(1);

      expect(result.isRight(), true);
      expect(result..fold((l) => null, (r) => r), Right(productsDTO));
    });

    test('returns ErrorHandler when the server call fails wit filters', () async {
      // arrange
      final expected = left(ErrorHandlerInternal(
        errorMessage: 'Server error',
      ));
      when(() => graphQLService.query(any(), variables: {
            "filter": {
              "price": {"from": priceFrom, "to": priceTo},
              "category_uid": {"in": listUidCategory}
            }
          })).thenAnswer((_) async => Left(ErrorHandlerInternal(
            errorMessage: 'Server error',
          )));

      // act
      final result = await searchProductDataSource.getProductsByFilter(
          productName,
          {
            "price": {"from": "", "to": ""},
            "category_uid": {"in": listUidCategory}
          },
          orderProducts);

      // assert
      verify(() => graphQLService.query(any(), variables: {
            "filter": {
              "price": {"from": priceFrom, "to": priceTo},
              "category_uid": {"in": listUidCategory}
            }
          })).called(1);
      expect(result, expected);
    });
  });

  group('get all products with pagination', () {
    String productName = 'vitaminas';
    String priceFrom = '10';
    String priceTo = '100';
    List<String> listCategoryUid = ['1', '2'];
    int pageSize = 10;
    int currentPage = 1;
    test('return get all products', () async {
      final resultQuery = generateMockQuery<ProductsDTO>(
        mockGraphQLClient,
        response: SearchProductFakeDataByRangePrice.succesfullData,
      );
      final productsDTO = ProductsDTO.fromJson(SearchProductFakeDataByRangePrice.succesfullData['products']);
      when(() => graphQLService.query(any(), variables: {
            "pageSize": pageSize,
            "currentPage": currentPage,
            "filter": {
              "price": {"from": priceFrom, "to": priceTo},
              "category_uid": {"in": listCategoryUid}
            }
          })).thenAnswer((invocation) async => Right(resultQuery));
      final result = await searchProductDataSource.getProductsByFilterWithPagination(
          orderProducts: orderProducts,
          productName: productName,
          filters: {
            "price": {"from": productName, "to": priceFrom},
            "category_uid": {"in": listCategoryUid}
          },
          pageSize: pageSize,
          currentPage: currentPage);
      verify(() => graphQLService.query(any(), variables: {
            "pageSize": pageSize,
            "currentPage": currentPage,
            "filter": {
              "price": {"from": priceFrom, "to": priceTo},
              "category_uid": {"in": listCategoryUid}
            }
          })).called(1);

      expect(result.isRight(), true);
      expect(result..fold((l) => null, (r) => r), Right(productsDTO));
    });

    test('returns ErrorHandler when the server call fails wit filters', () async {
      // arrange
      final expected = left(ErrorHandlerInternal(
        errorMessage: 'Server error',
      ));
      when(() => graphQLService.query(any(), variables: {
            "pageSize": pageSize,
            "currentPage": currentPage,
            "filter": {
              "price": {"from": priceFrom, "to": priceTo},
              "category_uid": {"in": listCategoryUid}
            }
          })).thenAnswer((_) async => Left(ErrorHandlerInternal(
            errorMessage: 'Server error',
          )));

      // act
      final result = await searchProductDataSource.getProductsByFilterWithPagination(
          productName: productName,
          orderProducts: orderProducts,
          filters: {
            "price": {"from": productName, "to": priceFrom},
            "category_uid": {"in": listCategoryUid}
          },
          pageSize: pageSize,
          currentPage: currentPage);

      // assert
      verify(() => graphQLService.query(any(), variables: {
            "pageSize": pageSize,
            "currentPage": currentPage,
            "filter": {
              "price": {"from": priceFrom, "to": priceTo},
              "category_uid": {"in": listCategoryUid}
            }
          })).called(1);
      expect(result, expected);
    });
  });
}
