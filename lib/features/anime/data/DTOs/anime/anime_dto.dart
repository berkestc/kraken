import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kraken/features/anime/data/DTOs/genre/genre_dto.dart';

import '../../../domain/models/anime.dart';
import '../../utils/converters.dart';

part 'anime_dto.freezed.dart';
part 'anime_dto.g.dart';

@freezed
class AnimeDto with _$AnimeDto {
  const factory AnimeDto({
    @JsonKey(name: "mal_id") required int id,
    required int rank,
    required int episodes,
    required String title,
    @LargeImageUrlConverter() @JsonKey(name: "images") required String imageUrl,
    required String synopsis,
    required double score,
    required List<GenreDto> genres,
  }) = _AnimeDto;

  const AnimeDto._();

  factory AnimeDto.fromJson(Map<String, dynamic> json) => _$AnimeDtoFromJson(json);

  Anime toDomain() {
    return Anime(
      id: id,
      title: title,
      imageUrl: imageUrl,
      rank: rank,
      ratingScore: score,
      genres: genres.map((e) => e.toDomain()).toList(),
      synopsis: synopsis,
      episodes: episodes,
    );
  }
}
