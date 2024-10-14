import "package:flutter_test/flutter_test.dart";
import "package:kraken/features/anime/data/DTOs/genre/genre_dto.dart";
import "package:kraken/features/anime/domain/models/genre.dart";

void main() {
  const genreId = 1;
  const genreType = "Action";
  const genreName = "Adventure";
  const genreUrl = "https://example.com/genre/adventure";

  final json = {
    "mal_id": genreId,
    "type": genreType,
    "name": genreName,
    "url": genreUrl,
  };

  const genreDto = GenreDto(
    id: genreId,
    type: genreType,
    name: genreName,
    url: genreUrl,
  );

  const expectedGenre = Genre(
    id: genreId,
    type: genreType,
    name: genreName,
    url: genreUrl,
  );

  test("GenreDto fromJson should correctly parse JSON", () {
    final parsedGenreDto = GenreDto.fromJson(json);
    final parsedGenre = parsedGenreDto.toDomain();

    expect(parsedGenre.id, equals(expectedGenre.id));
    expect(parsedGenre.type, equals(expectedGenre.type));
    expect(parsedGenre.name, equals(expectedGenre.name));
    expect(parsedGenre.url, equals(expectedGenre.url));
  });

  test("GenreDto toDomain should correctly map to Genre model", () {
    final mappedGenre = genreDto.toDomain();

    expect(mappedGenre.id, equals(expectedGenre.id));
    expect(mappedGenre.type, equals(expectedGenre.type));
    expect(mappedGenre.name, equals(expectedGenre.name));
    expect(mappedGenre.url, equals(expectedGenre.url));
  });
}
