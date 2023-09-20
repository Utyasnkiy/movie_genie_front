// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SearchDto _$$_SearchDtoFromJson(Map<String, dynamic> json) => _$_SearchDto(
      title_films: (json['title_films'] as List<dynamic>)
          .map((e) => Film.fromJson(e as Map<String, dynamic>))
          .toList(),
      plot_films: (json['plot_films'] as List<dynamic>)
          .map((e) => Film.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_SearchDtoToJson(_$_SearchDto instance) =>
    <String, dynamic>{
      'title_films': instance.title_films,
      'plot_films': instance.plot_films,
    };
