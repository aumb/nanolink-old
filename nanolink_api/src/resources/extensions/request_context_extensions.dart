import 'dart:async';

import 'package:dart_frog/dart_frog.dart';
import 'package:tuple/tuple.dart';

typedef ValidationResponse
    = Tuple3<Map<String, dynamic>, bool, List<KeyRule<dynamic>>>;

extension RequestContextX on RequestContext {
  ///Used to validate the body of the request according to the [keys] paramter
  ///returns a [ValidationResponse] object which contains the parsed body as
  ///`item1`, the body validation outcome as `item2`, and the list of invalid
  ///keys (if any) as `item3`
  Future<ValidationResponse> validate({
    List<KeyRule<dynamic>> keys = const [],
  }) async {
    late Map<String, dynamic> body;
    final invalidKeys = <KeyRule<dynamic>>[];

    try {
      body = await request.json();
    } catch (e) {
      body = {};
    }

    if (body.keys.isNotEmpty) {
      for (final key in keys) {
        if (!key.validate(body[key.key])) {
          invalidKeys.add(key);
        }
      }
    }

    final isValid = invalidKeys.isEmpty && body.isNotEmpty;

    return ValidationResponse(body, isValid, invalidKeys);
  }

  String? get authorizationHeader => request.headers['Authorization'];
}

class KeyRule<T> {
  KeyRule({
    required this.key,
    required this.isValidRules,
  });

  final String key;
  final bool Function(T) isValidRules;

  bool validate(T value) {
    return isValidRules(value);
  }
}
