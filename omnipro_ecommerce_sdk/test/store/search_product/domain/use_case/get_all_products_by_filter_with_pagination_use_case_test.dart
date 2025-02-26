import 'package:core/data/dto/products_dto.fr.dart';
import 'package:core/data/dto/products_mapper.dart';
import 'package:core/domain/entity/products.dart';
import 'package:core/utils/error_handler/error_code.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:omnipro_ecommerce_sdk/store/search_product/data/repository/search_product_respository.dart';
import 'package:omnipro_ecommerce_sdk/store/search_product/domain/use_case/get_all_products_by_filter_with_pagination_use_case.dart';
import '../../search_product_fake.dart';

class MockSearchProductRepository extends Mock implements SearchProductRepository {}

void main() {
  late SearchProductRepository searchProductRepository;
  late GetAllProductsByFilterWithPaginationUseCase getAllProductsByFilterWithPaginationUseCase;
  String productName = 'vitaminas';
  String priceFrom = '10';
  String priceTo = '100';
  List<String> listCategoryUid = ['1', '2'];
  int pageSize = 10;
  int currentPage = 1;
  final productsDTO = ProductsDTO.fromJson(SearchProductFakeDataByRangePrice.succesfullData['products']);
  final products = productsDTO.toDomain();
  Map<String, dynamic> filterFull = {
    "price": {"from": priceTo, "to": priceFrom},
    "category_uid": {"in": listCategoryUid}
  };
  Map<String, dynamic> orderProducts = {'relevance': 'ASC'};
  setUp(() async {
    searchProductRepository = MockSearchProductRepository();
    getAllProductsByFilterWithPaginationUseCase = GetAllProductsByFilterWithPaginationUseCase(searchProductRepository);
  });
  group('GetAllProductsByFilterUseCase', () {
    test('return products from repository', () async {
      when(() => searchProductRepository.getProductsByFilterWithPagination(
          orderProducts: orderProducts,
          productName: productName,
          filters: filterFull,
          pageSize: pageSize,
          currentPage: currentPage)).thenAnswer((_) async => Right<ErrorHandler, Products>(products));
      final result = await getAllProductsByFilterWithPaginationUseCase.call(
          orderProducts: orderProducts,
          productName: productName,
          filters: filterFull,
          pageSize: pageSize,
          currentPage: currentPage);
      verify(() => searchProductRepository.getProductsByFilterWithPagination(
          orderProducts: orderProducts,
          productName: productName,
          filters: filterFull,
          pageSize: pageSize,
          currentPage: currentPage)).called(1);
      expect(result.isRight(), true);
      expect(result..fold((l) => null, (r) => r), Right<ErrorHandler, Products>(products));
    });

    test('return error repository', () async {
      when(() => searchProductRepository.getProductsByFilterWithPagination(
              orderProducts: orderProducts,
              productName: productName,
              filters: filterFull,
              pageSize: pageSize,
              currentPage: currentPage))
          .thenAnswer((_) async => Left<ErrorHandler, Products>(
              ErrorHandlerExternal(errorCode: ErrorCode.errorGetAllProducts, errorMessage: 'error')));
      final result = await getAllProductsByFilterWithPaginationUseCase.call(
          orderProducts: orderProducts,
          productName: productName,
          filters: filterFull,
          pageSize: pageSize,
          currentPage: currentPage);
      verify(() => searchProductRepository.getProductsByFilterWithPagination(
          orderProducts: orderProducts,
          productName: productName,
          filters: filterFull,
          pageSize: pageSize,
          currentPage: currentPage)).called(1);
      expect(result.isLeft(), true);
      expect(
          result..fold((l) => l, (r) => null),
          Left<ErrorHandler, Products>(
              ErrorHandlerExternal(errorCode: ErrorCode.errorGetAllProducts, errorMessage: 'error')));
    });
  });
}
