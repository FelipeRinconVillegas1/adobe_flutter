import 'package:core/data/datasource/substitutions/substitution_datasource.dart';
import 'package:core/data/datasource/substitutions/substitution_datasource_impl.dart';
import 'package:core/data/repository/substitutions/substitution_repository.dart';
import 'package:core/data/repository/substitutions/substitution_repository_impl.dart';
import 'package:core/di/cart/di_cart.fr.dart';
import 'package:core/di/data_provider.fr.dart';
import 'package:core/domain/use_case/substitution/get_substitution_list_use_case.dart';
import 'package:core/domain/use_case/substitution/set_oms_receiving_substitutions_on_cart_use_case.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'di_substitution.fr.g.dart';

@Riverpod(keepAlive: true)
GetSubstitutionListUseCase getSubstitutionListUseCase(GetSubstitutionListUseCaseRef ref) {
  return GetSubstitutionListUseCase(ref.watch(substitutionRepositoryProvider));
}

@Riverpod(keepAlive: true)
SetOmsReceivingSubstitutionsOnCartUseCase setOmsReceivingSubstitutionsOnCartUseCase(SetOmsReceivingSubstitutionsOnCartUseCaseRef ref) {
  return SetOmsReceivingSubstitutionsOnCartUseCase(
      ref.watch(substitutionRepositoryProvider), ref.watch(getCartIdUseCaseProvider));
}

@Riverpod(keepAlive: true)
SubstitutionRepository substitutionRepository(SubstitutionRepositoryRef ref) {
  return SubstitutionRepositoryImpl(
    ref.watch(substitutionDatasourceProvider),
  );
}

@Riverpod(keepAlive: true)
SubstitutionDatasource substitutionDatasource(SubstitutionDatasourceRef ref) {
  return SubstitutionDatasourceImpl(
    ref.watch(graphQLServiceSourceProvider),
  );
}
