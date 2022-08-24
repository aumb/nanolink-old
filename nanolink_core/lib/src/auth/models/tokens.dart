import 'package:freezed_annotation/freezed_annotation.dart';

part 'tokens.freezed.dart';
part 'tokens.g.dart';

@freezed
class Tokens with _$Tokens {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory Tokens({
    required String accessToken,
    String? refreshToken,
  }) = _Tokens;

  factory Tokens.fromJson(Map<String, dynamic> json) => _$TokensFromJson(json);

  @visibleForTesting
  factory Tokens.mock() {
    return const Tokens(
      accessToken: 'accessToken',
      refreshToken: 'refreshToken',
    );
  }
}
