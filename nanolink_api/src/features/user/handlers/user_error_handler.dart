import 'package:dart_frog/dart_frog.dart';
import 'package:nanolink_core/nanolink_core.dart';

import '../../../server/handlers/error_handler.dart';

class UserErrorHandler with ErrorMixin {
  Response handle(UserException e) {
    return e.when<Response>(
      doesNotExist: () => errorResponse(
        const ResponseError(
          statusCode: 400,
          code: ErrorCode.doesNotExistError,
        ),
      ),
    );
  }
}
