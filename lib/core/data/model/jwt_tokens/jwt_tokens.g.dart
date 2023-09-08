// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'jwt_tokens.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_JwtJokens _$$_JwtJokensFromJson(Map<String, dynamic> json) => _$_JwtJokens(
      accessToken: json['accessToken'] as String,
      refreshToken: json['refreshToken'] as String,
      id: json['id'] as int,
    );

Map<String, dynamic> _$$_JwtJokensToJson(_$_JwtJokens instance) =>
    <String, dynamic>{
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
      'id': instance.id,
    };
