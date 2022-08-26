import 'package:dart_frog/dart_frog.dart';
import 'package:nanolink_core/nanolink_core.dart';

import '../../../resources/extensions/request_context_extensions.dart';

Middleware authHandlerMiddleware({bool isOptional = false}) => (innerHandler) {
      return (requestCtx) {
        final token = requestCtx.authorizationHeader;

        if (isOptional) {
          if (token?.isEmpty ?? false) {
            throw const AuthException.unauthorized();
          }
        } else {
          if (token?.isEmpty ?? true) {
            throw const AuthException.unauthorized();
          }
        }

        return Future.sync(() => innerHandler(requestCtx)).then(
          (response) {
            return response;
          },
        );
      };
    };
