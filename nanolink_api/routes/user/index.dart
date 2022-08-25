import 'dart:async';
import 'dart:io';

import 'package:dart_frog/dart_frog.dart';
import 'package:nanolink_core/nanolink_core.dart';

import '../../src/resources/extensions/request_context_extensions.dart';

FutureOr<Response> onRequest(RequestContext context) async {
  switch (context.request.method) {
    case HttpMethod.get:
      return _get(context);
    case HttpMethod.post:
    case HttpMethod.delete:
    case HttpMethod.head:
    case HttpMethod.options:
    case HttpMethod.patch:
    case HttpMethod.put:
      return Response(statusCode: HttpStatus.methodNotAllowed);
  }
}

///```
///curl --request GET \
///--url http://localhost:8080/user
///```
Future<Response> _get(RequestContext context) async {
  final jwt = context.authorizationHeader!;

  final dataSource = context.read<UserDataSource>();
  final user = await dataSource.getCurrentUser(jwt);

  return Response.json(body: user);
}
