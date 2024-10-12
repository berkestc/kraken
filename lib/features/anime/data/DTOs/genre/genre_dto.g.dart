// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'genre_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GenreDto _$$_GenreDtoFromJson(Map<String, dynamic> json) => _$_GenreDto(
      id: json['mal_id'] as int,
      type: json['type'] as String,
      name: json['name'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$$_GenreDtoToJson(_$_GenreDto instance) =>
    <String, dynamic>{
      'mal_id': instance.id,
      'type': instance.type,
      'name': instance.name,
      'url': instance.url,
    };
