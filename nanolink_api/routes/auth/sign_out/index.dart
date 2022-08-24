import 'dart:async';
import 'dart:io';

import 'package:dart_frog/dart_frog.dart';
import 'package:nanolink_core/nanolink_core.dart';

import '../../../src/resources/extensions/request_context_extensions.dart';

FutureOr<Response> onRequest(RequestContext context) async {
  switch (context.request.method) {
    case HttpMethod.post:
      return _post(context);
    case HttpMethod.get:
    case HttpMethod.delete:
    case HttpMethod.head:
    case HttpMethod.options:
    case HttpMethod.patch:
    case HttpMethod.put:
      return Response(statusCode: HttpStatus.methodNotAllowed);
  }
}

///```
///curl --request POST \
///  --url http://localhost:8080/auth/sign_out
///```
Future<Response> _post(RequestContext context) async {
  final service = context.read<AuthDataSource>();
  await service.signOut(context.authorizationHeader!);
  return Response.json();
}
