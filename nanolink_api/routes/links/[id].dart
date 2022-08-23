import 'dart:async';
import 'dart:io';

import 'package:dart_frog/dart_frog.dart';
import 'package:nanolink_core/nanolink_core.dart';

import '../../src/resources/extensions/request_context_extensions.dart';

FutureOr<Response> onRequest(RequestContext context, String id) {
  switch (context.request.method) {
    case HttpMethod.get:
      return _get(context, id);
    case HttpMethod.patch:
    case HttpMethod.put:
      return _update(context, id);
    case HttpMethod.delete:
      return _delete(context, id);
    case HttpMethod.post:
    case HttpMethod.head:
    case HttpMethod.options:
      return Response(statusCode: HttpStatus.methodNotAllowed);
  }
}

///```
///curl --request GET \
///--url http://localhost:8080/links/1
///```
Future<Response> _get(RequestContext context, String id) async {
  final service = context.read<LinksDataSource>();
  final link = await service.get(int.parse(id));

  return Response.json(body: link);
}

///```
///curl --request PUT \
///  --url http://localhost:8080/links/1 \
///  --header 'Content-Type: application/json' \
///  --data '{
///  "link": "www.google.com"
///}'
///```
Future<Response> _update(RequestContext context, String id) async {
  final validator = await context.validate(
    keys: [
      KeyRule<String?>(
        key: 'link',
        rules: (value) => value?.isNotEmpty ?? true,
      ),
    ],
  );

  if (validator.item2) {
    final service = context.read<LinksDataSource>();
    final link = await service.update(int.parse(id), validator.item1);

    return Response.json(body: link);
  } else {
    throw const LinksException.linkMissingOrInvalidBodyParams();
  }
}

///```
///curl --request DELETE \
///  --url http://localhost:8080/links/10
///```
Future<Response> _delete(RequestContext context, String id) async {
  final service = context.read<LinksDataSource>();
  final link = await service.delete(int.parse(id));

  return Response.json(statusCode: 202, body: link);
}
