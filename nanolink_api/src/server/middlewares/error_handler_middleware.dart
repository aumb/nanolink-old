import 'package:dart_frog/dart_frog.dart';

import '../handlers/error_handler.dart';

final _errorHandler = ErrorHandler();

Middleware errorHandler() => (innerHandler) {
      return (request) {
        return Future.sync(() => innerHandler(request)).then(
          (response) {
            return response;
          },
          onError: (Object e, StackTrace stackTrace) {
            return _errorHandler.handle(e);
          },
        );
      };
    };
