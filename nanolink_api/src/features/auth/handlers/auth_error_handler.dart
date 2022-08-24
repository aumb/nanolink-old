import 'package:dart_frog/dart_frog.dart';
import 'package:nanolink_core/nanolink_core.dart';

import '../../../server/handlers/error_handler.dart';

class AuthErrorHandler with ErrorMixin {
  Response handle(AuthException e) {
    return e.when<Response>(
      invalidEmailOrPassword: () => errorResponse(
        const ResponseError(
          statusCode: 400,
          code: ErrorCode.invalidEmailOrPassword,
        ),
      ),
      pendingEmailVerification: () => errorResponse(
        const ResponseError(
          statusCode: 400,
          code: ErrorCode.pendingEmailVerification,
        ),
      ),
      emailPasswordSignInException: () => errorResponse(
        const ResponseError(
          statusCode: 400,
          code: ErrorCode.emailPasswordSignInException,
        ),
      ),
      missingSignInBodyParams: () => errorResponse(
        const ResponseError(
          statusCode: 400,
          code: ErrorCode.missingOrInvalidBodyParams,
        ),
      ),
      emailPasswordSignUpException: () => errorResponse(
        const ResponseError(
          statusCode: 408,
          code: ErrorCode.emailPasswordSignUpException,
        ),
      ),
      missingSignUpBodyParams: () => errorResponse(
        const ResponseError(
          statusCode: 400,
          code: ErrorCode.missingOrInvalidBodyParams,
        ),
      ),
      invalidEmailFormat: () => errorResponse(
        const ResponseError(
          statusCode: 400,
          code: ErrorCode.invaldEmailFormat,
        ),
      ),
      invalidPasswordFormat: () => errorResponse(
        const ResponseError(
          statusCode: 400,
          code: ErrorCode.invalidPasswordFormat,
        ),
      ),
      userExists: () => errorResponse(
        const ResponseError(statusCode: 400, code: ErrorCode.userExists),
      ),
      signOutException: () => errorResponse(
        const ResponseError(statusCode: 400, code: ErrorCode.signOutException),
      ),
      timedout: () => errorResponse(
        const ResponseError(statusCode: 408, code: ErrorCode.unauthorized),
      ),
      unauthorized: () => errorResponse(
        const ResponseError(statusCode: 401, code: ErrorCode.unauthorized),
      ),
    );
  }
}
