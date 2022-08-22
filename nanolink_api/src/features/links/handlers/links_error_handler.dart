import 'package:dart_frog/dart_frog.dart';
import 'package:nanolink_core/nanolink_core.dart';

import '../../../server/handlers/error_handler.dart';

class LinksErrorHandler with ErrorMixin {
  Response handle(LinksException e) {
    return e.when<Response>(
      getLinksException: () => errorResponse(
        const ResponseError(
          code: ErrorCode.internalServerError,
          statusCode: 500,
        ),
      ),
      linksDeserializationException: () => errorResponse(
        const ResponseError(
          code: ErrorCode.parsingError,
          statusCode: 400,
        ),
      ),
      getLinkException: () => errorResponse(
        const ResponseError(
          code: ErrorCode.internalServerError,
          statusCode: 500,
        ),
      ),
      updateLinkException: () => errorResponse(
        const ResponseError(
          code: ErrorCode.internalServerError,
          statusCode: 500,
        ),
      ),
      createLinkException: () => errorResponse(
        const ResponseError(
          code: ErrorCode.internalServerError,
          statusCode: 500,
        ),
      ),
      deleteLinkException: () => errorResponse(
        const ResponseError(
          code: ErrorCode.internalServerError,
          statusCode: 500,
        ),
      ),
      linkDoesNotExistException: () => errorResponse(
        const ResponseError(
          code: ErrorCode.internalServerError,
          statusCode: 400,
        ),
      ),
      linkDeserializationException: () => errorResponse(
        const ResponseError(
          code: ErrorCode.parsingError,
          statusCode: 400,
        ),
      ),
      linkUnsafeException: () => errorResponse(
        const ResponseError(
          code: ErrorCode.unsafeLink,
          statusCode: 400,
        ),
      ),
      linkMissingOrInvalidBodyParams: () => errorResponse(
        const ResponseError(
          code: ErrorCode.missingOrInvalidBodyParams,
          statusCode: 400,
        ),
      ),
    );
  }
}
