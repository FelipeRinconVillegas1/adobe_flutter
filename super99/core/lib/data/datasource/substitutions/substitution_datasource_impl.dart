import 'dart:convert';

import 'package:core/data/datasource/secure_call_datasource.dart';
import 'package:core/data/datasource/substitutions/substitution_datasource.dart';
import 'package:core/data/datasource/substitutions/substitution_mutation.dart';
import 'package:core/data/datasource/substitutions/substitution_query.dart';
import 'package:core/data/dto/substitutions/substitution_dto.fr.dart';
import 'package:core/network/graphql/graphql_service.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';

class SubstitutionDatasourceImpl extends SubstitutionDatasource {
  final GraphQLService _graphQLService;

  SubstitutionDatasourceImpl(this._graphQLService);

  @override
  Future<Either<ErrorHandler, List<SubstitutionDTO>>> getSubstitutionList() {
    return secureServerCall(() async {
      String mutation = getStoreConfigQuery();
      final result = await _graphQLService.mutation(mutation);

      return result.fold(
        (l) => left(l),
        (json) {
          String jsonString = json.data?['storeConfig']['customerjourney_general_substitution_options'];
          Map<String, dynamic> updateJson = jsonDecode(jsonString);

          try {
            return right(
              updateJson.entries
                  .map((entry) => SubstitutionDTO.fromJson({'custom_code': entry.key, ...entry.value}))
                  .toList(),
            );
          } catch (e, stackTrace) {
            return left(ErrorHandlerInternal(errorMessage: 'Error parsing data', stackTrace: stackTrace));
          }
        },
      );
    });
  }

  @override
  Future<Either<ErrorHandler, SubstitutionResponseDTO>> setOmsReceivingSubstitutionOnCart({
    required String cartId,
    required String receivingSubstitutions,
  }) {
    return secureServerCall(() async {
      String mutation = setOmsReceivingSubstitutionsOnCartMutation(cartId, receivingSubstitutions);
      final result = await _graphQLService.mutation(mutation);

      return result.fold(
        (l) => left(l),
        (json) => right(SubstitutionResponseDTO.fromJson(json.data?['setOmsReceivingSubstitutionsOnCart'])),
      );
    });
  }
}
