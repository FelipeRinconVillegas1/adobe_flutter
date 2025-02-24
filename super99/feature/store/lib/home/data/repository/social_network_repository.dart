import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';
import 'package:store/home/domain/entity/social_network_enum.dart';

abstract class SocialNetworkRepository {
  Future<Either<ErrorHandler, String>> getUrlSocialNetwork(SocialNetworkEnum socialNetwork);
}
