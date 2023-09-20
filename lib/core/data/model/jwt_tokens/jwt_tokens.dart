import 'package:freezed_annotation/freezed_annotation.dart';

part 'jwt_tokens.g.dart';
part 'jwt_tokens.freezed.dart';

@freezed
class JwtJokens with _$JwtJokens {
  const factory JwtJokens({
    @JsonKey(name: "access_token")
    required String accessToken,
    @JsonKey(name: "refresh_token")
    required String refreshToken,
    required int id,
  }) = _JwtJokens;

  factory JwtJokens.fromJson(Map<String, dynamic> json) =>
      _$JwtJokensFromJson(json);
}
