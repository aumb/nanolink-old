import 'dart:async';
import 'dart:io';

import 'package:dart_frog/dart_frog.dart';
import 'package:nanolink_core/nanolink_core.dart';

import '../../src/resources/extensions/request_context_extensions.dart';

FutureOr<Response> onRequest(RequestContext context, String id) {
  switch (context.request.method) {
    case HttpMethod.delete:
      return _delete(context, id);
    case HttpMethod.get:
    case HttpMethod.patch:
    case HttpMethod.put:
    case HttpMethod.post:
    case HttpMethod.head:
    case HttpMethod.options:
      return Response(statusCode: HttpStatus.methodNotAllowed);
  }
}

///```
///curl --request DELETE \
///  --url http://localhost:8080/links/10
///```
Future<Response> _delete(RequestContext context, String id) async {
  // TODO(aumb): look into middleware per method (GET/POST etc)
  final jwt = context.authorizationHeader;

  if (jwt == null || jwt.isEmpty) {
    throw const AuthException.unauthorized();
  }

  final dataSource = context.read<LinksDataSource>();
  final link = await dataSource.delete(int.parse(id), jwt);

  return Response.json(statusCode: 202, body: link);
}
