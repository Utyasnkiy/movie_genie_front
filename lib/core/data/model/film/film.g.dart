// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'film.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Film _$$_FilmFromJson(Map<String, dynamic> json) => _$_Film(
      id: json['id'] as int,
      title: json['title'] as String,
      country: json['country'] as String,
      director: json['director'] as String,
      pictureId: json['picture_id'] as int,
      fees: json['fees'] as int,
      plot: json['plot'] as String,
      releaseYear: json['release_year'] as int,
    );

Map<String, dynamic> _$$_FilmToJson(_$_Film instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'country': instance.country,
      'director': instance.director,
      'picture_id': instance.pictureId,
      'fees': instance.fees,
      'plot': instance.plot,
      'release_year': instance.releaseYear,
    };
