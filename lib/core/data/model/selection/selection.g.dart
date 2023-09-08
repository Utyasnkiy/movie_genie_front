// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'selection.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Selection _$$_SelectionFromJson(Map<String, dynamic> json) => _$_Selection(
      id: json['id'] as int,
      owner: json['owner'] as int,
      tag: json['tag'] as String,
      name: json['name'] as String,
      responsePictureDto: ResponsePicture.fromJson(
          json['responsePictureDto'] as Map<String, dynamic>),
      films: (json['films'] as List<dynamic>)
          .map((e) => Film.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_SelectionToJson(_$_Selection instance) =>
    <String, dynamic>{
      'id': instance.id,
      'owner': instance.owner,
      'tag': instance.tag,
      'name': instance.name,
      'responsePictureDto': instance.responsePictureDto,
      'films': instance.films,
    };
