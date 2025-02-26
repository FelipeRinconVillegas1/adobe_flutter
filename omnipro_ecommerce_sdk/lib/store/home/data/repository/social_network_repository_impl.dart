import 'package:core/data/datasource/remote_config_datasource.dart';
import 'package:core/data/repository/remote_config_key.dart';
import 'package:core/utils/error_handler/error_code.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';
import 'package:omnipro_ecommerce_sdk/store/home/data/repository/social_network_repository.dart';
import '../../domain/entity/social_network_enum.dart';

class SocialNetworkRepositoryImpl implements SocialNetworkRepository {
  SocialNetworkRepositoryImpl(this._remoteConfigDataSource);

  final RemoteConfigDataSource _remoteConfigDataSource;
  @override
  Future<Either<ErrorHandler, String>> getUrlSocialNetwork(SocialNetworkEnum socialNetwork) async {
    try {
      switch (socialNetwork) {
        case SocialNetworkEnum.facebook:
          return right(_remoteConfigDataSource.getString(RemoteConfigKey.facebookUrl));
        case SocialNetworkEnum.instagram:
          return right(_remoteConfigDataSource.getString(RemoteConfigKey.instagramUrl));
        case SocialNetworkEnum.twitter:
          return right(_remoteConfigDataSource.getString(RemoteConfigKey.twitterUrl));
        case SocialNetworkEnum.youtube:
          return right(_remoteConfigDataSource.getString(RemoteConfigKey.youtubeUrl));
        case SocialNetworkEnum.pinterest:
          return right(_remoteConfigDataSource.getString(RemoteConfigKey.pinterestUrl));
        case SocialNetworkEnum.tiktok:
          return right(_remoteConfigDataSource.getString(RemoteConfigKey.tiktokUrl));
        }
    } catch (e) {
      return left(ErrorHandlerExternal(errorCode: ErrorCode.errorGetUrlSocialNetwork, errorMessage: e.toString()));
    }
  }
}
