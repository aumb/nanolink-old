import 'dart:io';

import 'package:dart_frog/dart_frog.dart';
import 'package:mocktail/mocktail.dart';
import 'package:nanolink_core/nanolink_core.dart';
import 'package:test/test.dart';

import '../../../routes/links/[id].dart' as route;

class _MockRequestContext extends Mock implements RequestContext {}

class _MockRequest extends Mock implements Request {}

class _MockLinksDataSource extends Mock implements LinksDataSource {}

void main() {
  late RequestContext context;
  late Request request;
  late LinksDataSource dataSource;

  const id = '1';
  final link = LinkDto.mock();

  setUpAll(() => registerFallbackValue(link));

  setUp(() {
    context = _MockRequestContext();
    request = _MockRequest();
    dataSource = _MockLinksDataSource();
    when(() => context.read<LinksDataSource>()).thenReturn(dataSource);
    when(() => context.request).thenReturn(request);
    when(() => request.headers).thenReturn({});
  });

  group('responds with a 405', () {
    setUp(() {
      when(() => dataSource.get(any())).thenAnswer((_) async => link);
    });

    test('when method is HEAD', () async {
      when(() => request.method).thenReturn(HttpMethod.head);

      final response = await route.onRequest(context, id);

      expect(response.statusCode, equals(HttpStatus.methodNotAllowed));
    });

    test('when method is OPTIONS', () async {
      when(() => request.method).thenReturn(HttpMethod.options);

      final response = await route.onRequest(context, id);

      expect(response.statusCode, equals(HttpStatus.methodNotAllowed));
    });

    test('when method is POST', () async {
      when(() => request.method).thenReturn(HttpMethod.post);

      final response = await route.onRequest(context, id);

      expect(response.statusCode, equals(HttpStatus.methodNotAllowed));
    });
  });

  group('GET /links/[id]', () {
    test('responds with a 200 and the found link', () async {
      when(() => dataSource.get(any())).thenAnswer((_) async => link);
      when(() => request.method).thenReturn(HttpMethod.get);

      final response = await route.onRequest(context, id);

      expect(response.statusCode, equals(HttpStatus.ok));
      await expectLater(response.json(), completion(equals(link.toJson())));

      verify(() => dataSource.get(any(that: equals(int.tryParse(id)))))
          .called(1);
    });
  });

  group('PUT /links/[id]', () {
    test('responds with a 200 and updates the link', () async {
      final updatedLink = link.copyWith(link: 'www.google.com');

      when(() => dataSource.get(any())).thenAnswer((_) async => link);
      when(
        () => dataSource.update(any(), any()),
      ).thenAnswer((_) async => updatedLink);
      when(() => request.method).thenReturn(HttpMethod.put);
      when(() => request.json()).thenAnswer((_) async => updatedLink.toJson());

      final response = await route.onRequest(context, id);

      expect(response.statusCode, equals(HttpStatus.ok));
      expect(response.json(), completion(equals(updatedLink.toJson())));

      verify(
        () => dataSource.update(
          any(that: equals(int.parse(id))),
          any(that: equals(updatedLink.toJson())),
        ),
      ).called(1);
    });
  });

  group('PATCH /links/[id]', () {
    test('responds with a 200 and updates the link', () async {
      final updatedLink = link.copyWith(link: 'www.google.com');

      when(() => dataSource.get(any())).thenAnswer((_) async => link);
      when(
        () => dataSource.update(any(), any()),
      ).thenAnswer((_) async => updatedLink);
      when(() => request.method).thenReturn(HttpMethod.put);
      when(() => request.json()).thenAnswer((_) async => updatedLink.toJson());

      final response = await route.onRequest(context, id);

      expect(response.statusCode, equals(HttpStatus.ok));
      expect(response.json(), completion(equals(updatedLink.toJson())));

      verify(
        () => dataSource.update(
          any(that: equals(int.parse(id))),
          any(that: equals(updatedLink.toJson())),
        ),
      ).called(1);
    });
  });

  group('DELETE /links/[id]', () {
    test('responds with a 202 and deletes the link', () async {
      when(() => dataSource.get(any())).thenAnswer((_) async => link);
      when(() => dataSource.delete(any())).thenAnswer((_) async => link);
      when(() => request.method).thenReturn(HttpMethod.delete);

      final response = await route.onRequest(context, id);

      expect(response.json(), completion(equals(link.toJson())));

      verify(() => dataSource.delete(any(that: equals(int.tryParse(id)))))
          .called(1);
    });
  });
}
