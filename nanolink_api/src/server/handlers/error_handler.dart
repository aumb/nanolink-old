import 'package:dart_frog/dart_frog.dart';
import 'package:nanolink_core/nanolink_core.dart';

import '../../features/links/handlers/links_error_handler.dart';

class ErrorHandler with ErrorMixin {
  final _linksErrorHandler = LinksErrorHandler();

  Response handle(Object e) {
    // ignore: avoid_print
    print(e);

    if (e is LinksException) {
      return _linksErrorHandler.handle(e);
    } else {
      return errorResponse(
        const ResponseError(
          statusCode: 500,
          code: ErrorCode.internalServerError,
        ),
      );
    }
  }
}

mixin ErrorMixin {
  Response errorResponse(ResponseError error) {
    return Response.json(
      statusCode: error.statusCode,
      body: error,
    );
  }
}
