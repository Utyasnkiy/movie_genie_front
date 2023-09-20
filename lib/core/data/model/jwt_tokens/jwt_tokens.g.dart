// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'jwt_tokens.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_JwtJokens _$$_JwtJokensFromJson(Map<String, dynamic> json) => _$_JwtJokens(
      accessToken: json['access_token'] as String,
      refreshToken: json['refresh_token'] as String,
      id: json['id'] as int,
    );

Map<String, dynamic> _$$_JwtJokensToJson(_$_JwtJokens instance) =>
    <String, dynamic>{
      'access_token': instance.accessToken,
      'refresh_token': instance.refreshToken,
      'id': instance.id,
    };
