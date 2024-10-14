import "package:flutter_test/flutter_test.dart";
import "package:fpdart/fpdart.dart";
import "package:kraken/features/anime/data/DTOs/anime/anime_dto.dart";
import "package:kraken/features/anime/domain/models/anime.dart";

void main() {
  const animeId = 1;
  const animeTitle = "Test Anime";
  const animeImageUrl = "https://example.com/image.jpg";
  const animeSynopsis = "Test Synopsis";
  const animeScore = 8.5;
  const animeEpisodes = 12;
  const animeRank = 1;

  final json = {
    "mal_id": animeId,
    "title": animeTitle,
    "images": {
      "jpg": {"large_image_url": animeImageUrl}
    },
    "synopsis": animeSynopsis,
    "score": animeScore,
    "genres": [],
    "episodes": animeEpisodes,
    "rank": animeRank,
  };

  const animeDto = AnimeDto(
    id: animeId,
    title: animeTitle,
    imageUrl: animeImageUrl,
    synopsis: animeSynopsis,
    score: animeScore,
    genres: [],
    episodes: animeEpisodes,
    rank: animeRank,
  );

  final expectedAnime = Anime(
    id: animeId,
    title: animeTitle,
    imageUrl: animeImageUrl,
    synopsis: animeSynopsis,
    ratingScore: animeScore,
    genres: const [],
    episodes: some(animeEpisodes),
    rank: some(animeRank),
  );

  test("AnimeDto fromJson should correctly parse JSON", () {
    final parsedAnimeDto = AnimeDto.fromJson(json);
    final parsedAnime = parsedAnimeDto.toDomain();

    expect(parsedAnime.id, equals(expectedAnime.id));
    expect(parsedAnime.title, equals(expectedAnime.title));
    expect(parsedAnime.imageUrl, equals(expectedAnime.imageUrl));
    expect(parsedAnime.synopsis, equals(expectedAnime.synopsis));
    expect(parsedAnime.ratingScore, equals(expectedAnime.ratingScore));
    expect(parsedAnime.episodes, equals(expectedAnime.episodes));
    expect(parsedAnime.rank, equals(expectedAnime.rank));
  });

  test("AnimeDto toDomain should correctly map to Anime model", () {
    final mappedAnime = animeDto.toDomain();

    expect(mappedAnime.id, equals(expectedAnime.id));
    expect(mappedAnime.title, equals(expectedAnime.title));
    expect(mappedAnime.imageUrl, equals(expectedAnime.imageUrl));
    expect(mappedAnime.synopsis, equals(expectedAnime.synopsis));
    expect(mappedAnime.ratingScore, equals(expectedAnime.ratingScore));
    expect(mappedAnime.episodes, equals(expectedAnime.episodes));
    expect(mappedAnime.rank, equals(expectedAnime.rank));
  });
}
