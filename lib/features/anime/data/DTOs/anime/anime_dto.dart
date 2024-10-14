import 'package:fpdart/fpdart.dart' hide id;
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/models/anime.dart';
import '../../utils/converters.dart';
import '../genre/genre_dto.dart';

part 'anime_dto.freezed.dart';
part 'anime_dto.g.dart';

@freezed
class AnimeDto with _$AnimeDto {
  @JsonSerializable(explicitToJson: true)
  const factory AnimeDto({
    @JsonKey(name: "mal_id") required int id,
    required String title,
    @LargeImageUrlConverter() @JsonKey(name: "images") required String imageUrl,
    required String synopsis,
    required double score,
    required List<GenreDto> genres,
    int? episodes,
    int? rank,
  }) = _AnimeDto;

  const AnimeDto._();

  factory AnimeDto.fromJson(Map<String, dynamic> json) => _$AnimeDtoFromJson(json);

  Anime toDomain() {
    return Anime(
      id: id,
      title: title,
      imageUrl: imageUrl,
      rank: rank.toOption(),
      ratingScore: score,
      genres: genres.map((e) => e.toDomain()).toList(),
      synopsis: synopsis,
      episodes: episodes.toOption(),
    );
  }
}
