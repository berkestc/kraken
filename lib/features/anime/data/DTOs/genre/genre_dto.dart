import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/models/genre.dart';

part 'genre_dto.freezed.dart';
part 'genre_dto.g.dart';

@freezed
class GenreDto with _$GenreDto {
  const factory GenreDto({
    @JsonKey(name: "mal_id") required int id,
    required String type,
    required String name,
    required String url,
  }) = _GenreDto;

  const GenreDto._();

  factory GenreDto.fromJson(Map<String, dynamic> json) => _$GenreDtoFromJson(json);

  Genre toDomain() {
    return Genre(
      id: id,
      type: type,
      name: name,
      url: url,
    );
  }
}
