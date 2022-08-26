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

// ///```
// ///curl --request GET \
// ///--url http://localhost:8080/links/1
// ///```
// Future<Response> _get(RequestContext context, String id) async {
//   final dataSource = context.read<LinksDataSource>();
//   final link = await dataSource.get(int.parse(id));

//   return Response.json(body: link);
// }

// ///```
// ///curl --request PUT \
// ///  --url http://localhost:8080/links/1 \
// ///  --header 'Content-Type: application/json' \
// ///  --data '{
// ///  "link": "www.google.com"
// ///}'
// ///```
// Future<Response> _update(RequestContext context, String id) async {
//   final validator = await context.validate(
//     keys: [
//       KeyRule<String?>(
//         key: 'link',
//         rules: (value) => value?.isNotEmpty ?? true,
//       ),
//     ],
//   );

//   if (validator.item2) {
//     final dataSource = context.read<LinksDataSource>();
//     final link = await dataSource.update(int.parse(id), validator.item1);

//     return Response.json(body: link);
//   } else {
//     throw const LinksException.linkMissingOrInvalidBodyParams();
//   }
// }
