// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'anime_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AnimeDto _$$_AnimeDtoFromJson(Map<String, dynamic> json) => _$_AnimeDto(
      id: json['mal_id'] as int,
      rank: json['rank'] as int,
      episodes: json['episodes'] as int,
      title: json['title'] as String,
      imageUrl: const LargeImageUrlConverter()
          .fromJson(json['images'] as Map<String, dynamic>),
      synopsis: json['synopsis'] as String,
      score: (json['score'] as num).toDouble(),
      genres: (json['genres'] as List<dynamic>)
          .map((e) => GenreDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_AnimeDtoToJson(_$_AnimeDto instance) =>
    <String, dynamic>{
      'mal_id': instance.id,
      'rank': instance.rank,
      'episodes': instance.episodes,
      'title': instance.title,
      'images': const LargeImageUrlConverter().toJson(instance.imageUrl),
      'synopsis': instance.synopsis,
      'score': instance.score,
      'genres': instance.genres,
    };