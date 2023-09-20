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
      pictureId: json['picture_id'] as int?,
      films: (json['films'] as List<dynamic>)
          .map((e) => Film.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_SelectionToJson(_$_Selection instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'owner': instance.owner,
    'tag': instance.tag,
    'name': instance.name,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('picture_id', instance.pictureId);
  val['films'] = instance.films;
  writeNotNull('picture', instance.picture);
  return val;
}
