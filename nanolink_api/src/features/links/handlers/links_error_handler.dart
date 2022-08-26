import 'package:dart_frog/dart_frog.dart';
import 'package:nanolink_core/nanolink_core.dart';

import '../../../server/handlers/error_handler.dart';

class LinksErrorHandler with ErrorMixin {
  Response handle(LinksException e) {
    return e.when<Response>(
      getLinks: () => errorResponse(
        const ResponseError(
          code: ErrorCode.internalServerError,
          statusCode: 500,
        ),
      ),
      linksDeserialization: () => errorResponse(
        const ResponseError(
          code: ErrorCode.parsingError,
          statusCode: 400,
        ),
      ),
      getLink: () => errorResponse(
        const ResponseError(
          code: ErrorCode.internalServerError,
          statusCode: 500,
        ),
      ),
      updateLink: () => errorResponse(
        const ResponseError(
          code: ErrorCode.internalServerError,
          statusCode: 500,
        ),
      ),
      createLink: () => errorResponse(
        const ResponseError(
          code: ErrorCode.internalServerError,
          statusCode: 500,
        ),
      ),
      deleteLink: () => errorResponse(
        const ResponseError(
          code: ErrorCode.internalServerError,
          statusCode: 500,
        ),
      ),
      linkDoesNotExist: () => errorResponse(
        const ResponseError(
          code: ErrorCode.internalServerError,
          statusCode: 400,
        ),
      ),
      linkDeserialization: () => errorResponse(
        const ResponseError(
          code: ErrorCode.parsingError,
          statusCode: 400,
        ),
      ),
      linkUnsafe: () => errorResponse(
        const ResponseError(
          code: ErrorCode.unsafeLinkError,
          statusCode: 400,
        ),
      ),
      linkMissingOrInvalidBodyParams: () => errorResponse(
        const ResponseError(
          code: ErrorCode.missingOrInvalidBodyParamsError,
          statusCode: 400,
        ),
      ),
    );
  }
}
