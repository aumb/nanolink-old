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
      return _create(context);
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
///--url http://localhost:8080/links
///```
Future<Response> _get(RequestContext context) async {
  final service = context.read<LinksDataSource>();
  final links = await service.getAll();

  return Response.json(body: links);
}

///```
///curl --request POST \
///  --url http://localhost:8080/links \
///  --header 'Content-Type: application/json' \
///  --data '{
///  "link": "www.google.com"
///}'
///```
Future<Response> _create(RequestContext context) async {
  final validator = await context.validate(
    keys: [
      KeyRule<String?>(
        key: 'link',
        rules: (value) => value?.isNotEmpty ?? false,
      ),
    ],
  );

  if (validator.item2) {
    final service = context.read<LinksDataSource>();
    final createdLink = await service.create(validator.item1);

    return Response.json(statusCode: 201, body: createdLink);
  } else {
    throw const LinksException.linkMissingOrInvalidBodyParams();
  }
}
