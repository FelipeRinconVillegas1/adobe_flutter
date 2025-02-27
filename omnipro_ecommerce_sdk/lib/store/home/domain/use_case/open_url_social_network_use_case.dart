import 'dart:async';
import 'package:core/utils/error_handler/error_code.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:core/utils/extension.dart';
import 'package:dartz/dartz.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../data/repository/social_network_repository.dart';
import '../entity/social_network_enum.dart';

class OpenUrlSocialNetworkUseCase {
  OpenUrlSocialNetworkUseCase({required this.socialNetworkRepository});

  final SocialNetworkRepository socialNetworkRepository;

  Future<Either<ErrorHandler, bool>> call(SocialNetworkEnum socialNetwork) async {
    try {
      final response = await socialNetworkRepository.getUrlSocialNetwork(socialNetwork);
      if (response.isRight()) {
        unawaited(launchUrl(Uri.parse(response.getRight()!), mode: LaunchMode.externalApplication));
        return right(true);
      } else {
        return left(ErrorHandlerExternal(errorCode: ErrorCode.errorGetUrlSocialNetwork, errorMessage: ''));
      }
    } catch (e) {
      return left(ErrorHandlerExternal(errorCode: ErrorCode.errorGetUrlSocialNetwork, errorMessage: e.toString()));
    }
  }
}
