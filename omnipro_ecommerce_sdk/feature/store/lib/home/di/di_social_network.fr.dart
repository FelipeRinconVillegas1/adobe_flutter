import 'package:core/di/data_provider.fr.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:store/home/data/repository/social_network_repository.dart';
import 'package:store/home/data/repository/social_network_repository_impl.dart';
import 'package:store/home/domain/use_case/open_url_social_network_use_case.dart';

part 'di_social_network.fr.g.dart';

@riverpod
OpenUrlSocialNetworkUseCase openUrlSocialNetworkUseCase(OpenUrlSocialNetworkUseCaseRef ref) {
  return OpenUrlSocialNetworkUseCase(socialNetworkRepository: ref.watch(socialNetworkRepositoryProvider));
}

@riverpod
SocialNetworkRepository socialNetworkRepository(SocialNetworkRepositoryRef ref) {
  return SocialNetworkRepositoryImpl(ref.watch(remoteConfigDataSourceProvider));
}
