import 'package:core/utils/error_handler/error_handler.dart';
import 'package:core/utils/loggers/app_logger.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  setUp(() async {
    await LoggerApp().init(isDebug: false, isTest: true);
  });

  group('ErrorHandler tests', () {
    test('when internal', () async {
      //arrange
      final error = ErrorHandlerInternal(errorMessage: 'error message');

      //assert
      expect(error, isA<ErrorHandlerInternal>());

      //act
      error.whenInternal(exec: (error) {
        //assert
        expect(error, isA<ErrorHandlerInternal>());
        expect(error.errorMessage, 'error message');
      });

      final errorResult = error.whenExternal(exec: (error) {});
      expect(errorResult, null);

      final errorResult2 = error.whenError(
        internal: (error) {
          //assert
          expect(error, isA<ErrorHandlerInternal>());
          expect(error.errorMessage, 'error message');
        },
        external: (error) {},
      );

      expect(errorResult2, null);
    });

    test('when external', () async {
      //arrange
      final error = ErrorHandlerExternal(errorCode: '1', errorMessage: 'error message');
      int errorInteralCount = 0;

      //assert
      expect(error, isA<ErrorHandlerExternal>());

      //act
      error.whenInternal(exec: (error) {
        //act
        errorInteralCount++;
      });

      expect(errorInteralCount, 0);

      final errorResult = error.whenExternal<String>(exec: (error) {
        //assert
        expect(error, isA<ErrorHandlerExternal>());
        expect(error.errorCode, '1');
        expect(error.errorMessage, 'error message');
        return 'test';
      });
      expect(errorResult, 'test');

      final errorResult2 = error.whenError<String>(
        internal: (error) {
          //assert
          errorInteralCount++;
        },
        external: (error) {
          //assert
          expect(error, isA<ErrorHandlerExternal>());
          expect(error.errorCode, '1');
          expect(error.errorMessage, 'error message');
          return 'test';
        },
      );

      expect(errorResult2, 'test');
      expect(errorInteralCount, 0);
    });
  });
}
