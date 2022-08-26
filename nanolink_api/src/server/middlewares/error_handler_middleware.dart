import 'package:dart_frog/dart_frog.dart';

import '../handlers/error_handler.dart';

final _errorHandler = ErrorHandler();

Middleware errorHandlerMiddleware() => (innerHandler) {
      return (request) {
        return Future.sync(() => innerHandler(request)).then(
          (response) {
            return response;
          },
          onError: (Object e, StackTrace stackTrace) {
            // ignore: avoid_print
            print(e);
            // ignore: avoid_print
            print(stackTrace);
            return _errorHandler.handle(e);
          },
        );
      };
    };
