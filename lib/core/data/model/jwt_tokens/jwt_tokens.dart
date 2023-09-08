import 'package:freezed_annotation/freezed_annotation.dart';

part 'jwt_tokens.g.dart';
part 'jwt_tokens.freezed.dart';

@freezed
class JwtJokens with _$JwtJokens {
  const factory JwtJokens({
    required String accessToken,
    required String refreshToken,
    required int id,
  }) = _JwtJokens;

  factory JwtJokens.fromJson(Map<String, dynamic> json) =>
      _$JwtJokensFromJson(json);
}
