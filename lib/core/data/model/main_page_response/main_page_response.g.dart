// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_page_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MainPageResponse _$$_MainPageResponseFromJson(Map<String, dynamic> json) =>
    _$_MainPageResponse(
      films: (json['films'] as List<dynamic>)
          .map((e) => Film.fromJson(e as Map<String, dynamic>))
          .toList(),
      selections: (json['selections'] as List<dynamic>)
          .map((e) => Selection.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
