// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'save_selection.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$$_SaveSelectionToJson(_$_SaveSelection instance) {
  final val = <String, dynamic>{
    'tag': instance.tag,
    'name': instance.name,
    'owner': instance.owner,
    'films': instance.films,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('picture', instance.picture);
  return val;
}
