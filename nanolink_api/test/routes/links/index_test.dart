// import 'dart:io';

// import 'package:dart_frog/dart_frog.dart';
// import 'package:mocktail/mocktail.dart';
// import 'package:nanolink_core/nanolink_core.dart';
// import 'package:test/test.dart';

// import '../../../routes/links/index.dart' as route;

// class _MockRequestContext extends Mock implements RequestContext {}

// class _MockRequest extends Mock implements Request {}

// class _MockLinksDataSource extends Mock implements LinksDataSource {}

// class _MockUri extends Mock implements Uri {}

// void main() {
//   late RequestContext context;
//   late Request request;
//   late LinksDataSource dataSource;
//   late Uri uri;

//   final link = LinkDto.mock();

//   setUpAll(() => registerFallbackValue(link));

//   setUp(() {
//     context = _MockRequestContext();
//     request = _MockRequest();
//     dataSource = _MockLinksDataSource();
//     uri = _MockUri();
//     when(() => context.read<LinksDataSource>()).thenReturn(dataSource);
//     when(() => context.request).thenReturn(request);
//     when(() => request.uri).thenReturn(uri);
//     when(() => uri.resolve(any())).thenAnswer(
//       (_) => Uri.parse('http://localhost/links${_.positionalArguments.first}'),
//     );
//     when(() => uri.queryParameters).thenReturn({});
//   });

//   group('responds with a 405', () {
//     test('when method is DELETE', () async {
//       when(() => request.method).thenReturn(HttpMethod.delete);

//       final response = await route.onRequest(context);

//       expect(response.statusCode, equals(HttpStatus.methodNotAllowed));
//     });

//     test('when method is HEAD', () async {
//       when(() => request.method).thenReturn(HttpMethod.head);

//       final response = await route.onRequest(context);

//       expect(response.statusCode, equals(HttpStatus.methodNotAllowed));
//     });

//     test('when method is OPTIONS', () async {
//       when(() => request.method).thenReturn(HttpMethod.options);

//       final response = await route.onRequest(context);

//       expect(response.statusCode, equals(HttpStatus.methodNotAllowed));
//     });

//     test('when method is PATCH', () async {
//       when(() => request.method).thenReturn(HttpMethod.patch);

//       final response = await route.onRequest(context);

//       expect(response.statusCode, equals(HttpStatus.methodNotAllowed));
//     });

//     test('when method is PUT', () async {
//       when(() => request.method).thenReturn(HttpMethod.put);

//       final response = await route.onRequest(context);

//       expect(response.statusCode, equals(HttpStatus.methodNotAllowed));
//     });
//   });

//   group('GET /links', () {
//     test('responds with a 200 and an empty list', () async {
//       when(() => dataSource.getAll()).thenAnswer((_) async => []);
//       when(() => request.method).thenReturn(HttpMethod.get);

//       final response = await route.onRequest(context);

//       expect(response.statusCode, equals(HttpStatus.ok));
//       expect(response.json(), completion(isEmpty));

//       verify(() => dataSource.getAll()).called(1);
//     });

//     test('responds with a 200 and a populated list', () async {
//       when(() => dataSource.getAll()).thenAnswer((_) async => [link]);
//       when(() => request.method).thenReturn(HttpMethod.get);

//       final response = await route.onRequest(context);

//       expect(response.statusCode, equals(HttpStatus.ok));
//       expect(response.json(), completion(equals([link.toJson()])));

//       verify(() => dataSource.getAll()).called(1);
//     });
//   });

//   group('POST /links', () {
//     test('responds with a 201 and the newly created LinkDto', () async {
//       when(() => request.method).thenReturn(HttpMethod.post);
//       when(() => request.json()).thenAnswer((_) async {
//         return <String, dynamic>{
//           'id': 1,
//           'link': 'link',
//           'short_link': 'shortLink',
//           'created_at': DateTime(1995),
//         };
//       });
//       when(() => dataSource.create(any())).thenAnswer((_) async => link);

//       final response = await route.onRequest(context);

//       expect(response.statusCode, equals(HttpStatus.created));
//       expect(response.json(), completion(equals(link.toJson())));

//       verify(() => dataSource.create(any())).called(1);
//     });
//   });
// }
