import 'dart:io';

import 'package:core/utils/error_handler/error_code.dart';
import 'package:core/utils/error_handler/error_handler.dart' as eh;
import 'package:core/utils/error_handler/error_helper.dart';
import 'package:dartz/dartz.dart';
import 'package:graphql/client.dart';
import 'package:http/http.dart';

Future<Either<eh.ErrorHandler, T>> secureServerCall<T>(Future<Either<eh.ErrorHandler, T>> Function() request,
    {ErrorCode? errorCode, String? errorMessage, bool reportPhoneTime = false}) async {
  try {
    return await request();
  } on TypeError catch (e, stackTrace) {
    return left(
      eh.ErrorHandlerInternal(
        error: e,
        errorMessage: errorMessage ?? 'Type Error',
        stackTrace: stackTrace,
        errorCode: errorCode ?? ErrorCode.errorTypeError,
      ),
    );
  } on GraphQLError catch (e, stackTrace) {
    return left(
      eh.ErrorHandlerExternal(
        error: e,
        errorMessage: errorMessage ?? e.message,
        stackTrace: stackTrace,
        errorCode: errorCode ?? ErrorHelper().getErrorCodeByGraphQLError(e),
      ),
    );
  } on ClientException catch (e) {
    return left(
      eh.ErrorHandlerExternal(
        error: e,
        errorMessage: e.toString(),
        errorCode: ErrorCode.errorInternetClientException,
      ),
    );
  } on HandshakeException catch (e) {
    return left(
      eh.ErrorHandlerExternal(
        error: e,
        errorMessage: e.toString(),
        errorCode: ErrorCode.errorConnectionCertificates,
      ),
    );
  } on OperationException catch (e, stackTrace) {
    return left(
      eh.ErrorHandlerExternal(
        error: e,
        errorMessage: errorMessage ?? e.graphqlErrors.first.message,
        stackTrace: stackTrace,
        errorCode: errorCode ?? ErrorHelper().getErrorCodeByGraphQLError(e.graphqlErrors.first),
      ),
    );
  } catch (e,s) {
    return left(
      eh.ErrorHandlerInternal(
        error: e,
        stackTrace: s,
        errorMessage: e.toString(),
        errorCode: errorCode ?? generateErrorCode(e) ?? ErrorCode.unknown,
      ),
    );
  }
}

String? generateErrorCode(Object? e) {
  try {
    if (e == null) {
      return null;
    }
    String typeName = e.runtimeType.toString();
    if (typeName.isNotEmpty) {
      int length = typeName.length >= 12 ? 12 : typeName.length;
      return typeName.substring(0, length).toUpperCase();
    } else {
      return null;
    }
  } catch (error) {
    return null;
  }
}

Future<Option<eh.ErrorHandler>> secureServerCallOption(Future<Option<eh.ErrorHandler>> Function() request,
    {ErrorCode? errorCode, String? errorMessage}) async {
  try {
    return await request();
  } on TypeError catch (e, stackTrace) {
    return Some(
      eh.ErrorHandlerInternal(
        error: e,
        errorMessage: errorMessage ?? 'Type Error',
        stackTrace: stackTrace,
        errorCode: errorCode,
      ),
    );
  } on GraphQLError catch (e, stackTrace) {
    return Some(eh.ErrorHandlerExternal(
      error: e,
      errorMessage: errorMessage ?? e.message,
      stackTrace: stackTrace,
      errorCode: errorCode ?? ErrorHelper().getErrorCodeByGraphQLError(e),
    ));
  } on ClientException catch (e) {
    return Some(
      eh.ErrorHandlerExternal(
        error: e,
        errorMessage: e.toString(),
        errorCode: ErrorCode.errorInternetConnection,
      ),
    );
  } on HandshakeException catch (e) {
    return Some(
      eh.ErrorHandlerExternal(
        error: e,
        errorMessage: e.toString(),
        errorCode: ErrorCode.errorConnectionCertificates,
      ),
    );
  } catch (e) {
    return Some(
      eh.ErrorHandlerInternal(
        error: e,
        errorMessage: e.toString(),
        errorCode: errorCode ?? generateErrorCode(e) ?? ErrorCode.unknown,
      ),
    );
  }
}
