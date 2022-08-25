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
///  --url http://localhost:8080/auth/sign_in \
///  --header 'Content-Type: application/json' \
///  --data '{
///  "email": "www.google.com"
///  "password": "123456"
///}'
///```
Future<Response> _post(RequestContext context) async {
  final validator = await context.validate(
    keys: [
      KeyRule<String?>(
        key: 'email',
        rules: (value) => value?.isNotEmpty ?? false,
      ),
      KeyRule<String?>(
        key: 'password',
        rules: (value) => value?.isNotEmpty ?? false,
      ),
    ],
  );

  if (validator.item2) {
    final dataSource = context.read<AuthDataSource>();
    final tokens = await dataSource.emailAndPasswordSignIn(
      validator.item1['email'] as String,
      validator.item1['password'] as String,
    );

    return Response.json(body: tokens);
  } else {
    throw const AuthException.missingSignInBodyParams();
  }
}
