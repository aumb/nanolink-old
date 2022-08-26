import 'package:dart_frog/dart_frog.dart';
import 'package:nanolink_core/nanolink_core.dart';

import '../../../server/handlers/error_handler.dart';

class AuthErrorHandler with ErrorMixin {
  Response handle(AuthException e) {
    return e.when<Response>(
      refreshToken: () => errorResponse(
        const ResponseError(
          statusCode: 400,
          code: ErrorCode.refreshTokenError,
        ),
      ),
      invalidEmailOrPassword: () => errorResponse(
        const ResponseError(
          statusCode: 400,
          code: ErrorCode.invalidEmailOrPasswordError,
        ),
      ),
      pendingEmailVerification: () => errorResponse(
        const ResponseError(
          statusCode: 400,
          code: ErrorCode.pendingEmailVerificationError,
        ),
      ),
      emailPasswordSignIn: () => errorResponse(
        const ResponseError(
          statusCode: 400,
          code: ErrorCode.emailPasswordSignInError,
        ),
      ),
      missingSignInBodyParams: () => errorResponse(
        const ResponseError(
          statusCode: 400,
          code: ErrorCode.missingOrInvalidBodyParamsError,
        ),
      ),
      emailPasswordSignUp: () => errorResponse(
        const ResponseError(
          statusCode: 408,
          code: ErrorCode.emailPasswordSignUpError,
        ),
      ),
      missingSignUpBodyParams: () => errorResponse(
        const ResponseError(
          statusCode: 400,
          code: ErrorCode.missingOrInvalidBodyParamsError,
        ),
      ),
      invalidEmailFormat: () => errorResponse(
        const ResponseError(
          statusCode: 400,
          code: ErrorCode.invaldEmailFormatError,
        ),
      ),
      invalidPasswordFormat: () => errorResponse(
        const ResponseError(
          statusCode: 400,
          code: ErrorCode.invalidPasswordFormatError,
        ),
      ),
      userExists: () => errorResponse(
        const ResponseError(statusCode: 400, code: ErrorCode.userExistsError),
      ),
      signOutException: () => errorResponse(
        const ResponseError(statusCode: 400, code: ErrorCode.signOutError),
      ),
      timedout: () => errorResponse(
        const ResponseError(statusCode: 408, code: ErrorCode.unauthorizedError),
      ),
      unauthorized: () => errorResponse(
        const ResponseError(statusCode: 401, code: ErrorCode.unauthorizedError),
      ),
    );
  }
}
