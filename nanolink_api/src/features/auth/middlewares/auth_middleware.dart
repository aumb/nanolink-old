import 'package:dart_frog/dart_frog.dart';
import 'package:nanolink_core/nanolink_core.dart';

Middleware authHandlerMiddleware() => (innerHandler) {
      return (requestCtx) {
        final token = requestCtx.request.headers['Authorization'];

        if (token == null) {
          throw const AuthException.unauthorized();
        }

        return Future.sync(() => innerHandler(requestCtx)).then(
          (response) {
            return response;
          },
        );
      };
    };
