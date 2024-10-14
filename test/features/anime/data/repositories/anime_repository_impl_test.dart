import "dart:async";

import "package:dio/dio.dart";
import "package:flutter_test/flutter_test.dart";
import "package:fpdart/fpdart.dart";
import "package:kraken/core/models/failure/failure.dart";
import "package:kraken/features/anime/data/DTOs/anime/anime_dto.dart";
import "package:kraken/features/anime/data/DTOs/paginated/paginated_dto.dart";
import "package:kraken/features/anime/data/repositories/anime_repository_impl.dart";
import "package:kraken/services/network/network_service.dart";
import "package:kraken/services/platform/platform_service.dart";
import "package:mockito/annotations.dart";
import "package:mockito/mockito.dart";

import "anime_repository_impl_test.mocks.dart";

@GenerateMocks([PlatformService, NetworkService])
void main() {
  late AnimeRepositoryImpl animeRepository;
  late MockPlatformService mockPlatformService;
  late MockNetworkService mockNetworkService;

  setUp(() {
    mockPlatformService = MockPlatformService();
    mockNetworkService = MockNetworkService();
    animeRepository = AnimeRepositoryImpl(
      platformService: mockPlatformService,
      networkService: mockNetworkService,
    );
  });

  group("AnimeRepositoryImpl", () {
    const testAnimeId = 100;
    const testAnimePage = 1;

    const testAnimeDto = AnimeDto(
      id: 1,
      title: "Test Anime",
      imageUrl: "https://example.com/image.jpg",
      synopsis: "Test Synopsis",
      score: 8.5,
      genres: [],
      episodes: 12,
      rank: 1,
    );

    const testPaginatedDto = PaginatedDto(
      items: [testAnimeDto],
      currentPage: 1,
      hasNextPage: true,
    );

    test("should call sendFetchAnimeListRequest on PlatformService", () async {
      await animeRepository.sendFetchAnimeListRequest();

      verify(mockPlatformService.sendFetchAnimeListRequest()).called(1);
    });

    test("PaginatedDto fromJson should correctly parse JSON", () {
      final json = {
        "data": [
          {
            "mal_id": 1,
            "title": "Test Anime",
            "images": {
              "jpg": {"large_image_url": "https://example.com/image.jpg"}
            },
            "synopsis": "Test Synopsis",
            "score": 8.5,
            "genres": [],
            "episodes": 12,
            "rank": 1,
          }
        ],
        "pagination": {"current_page": 1, "has_next_page": true}
      };

      final paginatedDto = PaginatedDto.fromJson(json, (e) => AnimeDto.fromJson(e! as Map<String, dynamic>));
      final paginated = paginatedDto.toDomain();

      expect(paginated.items.length, equals(1));
      expect(paginated.page, equals(1));
      expect(paginated.hasNextPage, equals(true));
    });

    test("should fetch anime list from network and call callback on success", () async {
      when(mockNetworkService.get(any, queryParameters: {"page": testAnimePage, "limit": 20})).thenAnswer((_) async {
        final response = testPaginatedDto.toJson((e) => e.toJson());
        return right(
          Response(
            data: response,
            requestOptions: RequestOptions(),
          ),
        );
      });

      var callbackCalled = false;

      final completer = Completer<void>();

      animeRepository.setOnAnimesFetched((result) {
        result.fold(
          (failure) {
            fail("Should not fail");
          },
          (paginated) {
            callbackCalled = true;
            expect(paginated.items.length, equals(1));
            expect(paginated.items.first.title, equals("Test Anime"));

            completer.complete();
          },
        );
      });

      final onTriggerFetchAnimeList =
          verify(mockPlatformService.initialize(captureAny)).captured.single as Function(int);
      onTriggerFetchAnimeList(testAnimePage);

      await completer.future;

      expect(callbackCalled, isTrue);

      verify(
        mockNetworkService.get(
          any,
          queryParameters: {"page": testAnimePage, "limit": 20},
        ),
      ).called(1);
    });

    test("should return characters from network on success", () async {
      final characterResponse = {
        "data": [
          {
            "character": {
              "mal_id": 1,
              "name": "Character Name",
              "images": {
                "jpg": {"image_url": "https://example.com/image.jpg"}
              }
            }
          }
        ]
      };

      when(mockNetworkService.get(any))
          .thenAnswer((_) async => right(Response(data: characterResponse, requestOptions: RequestOptions())));

      final result = await animeRepository.getCharacters(testAnimeId);

      result.fold(
        (failure) => fail("Should not fail"),
        (characters) {
          expect(characters.length, equals(1));
          expect(characters.first.name, equals("Character Name"));
        },
      );
    });

    test("should return Failure on network error for getCharacters", () async {
      when(mockNetworkService.get(any)).thenAnswer((_) async => left(const Failure.responseError("Error")));

      final result = await animeRepository.getCharacters(testAnimeId);

      result.fold(
        (failure) {
          expect(failure, isA<Failure>());
        },
        (characters) => fail("Should not succeed"),
      );
    });

    test("AnimeDto toDomain() should correctly map to Anime", () {
      final anime = testAnimeDto.toDomain();

      expect(anime.id, equals(testAnimeDto.id));
      expect(anime.title, equals(testAnimeDto.title));
      expect(anime.imageUrl, equals(testAnimeDto.imageUrl));
      expect(anime.ratingScore, equals(testAnimeDto.score));
      expect(anime.genres.length, equals(testAnimeDto.genres.length));
    });

    test("PaginatedDto toDomain() should correctly map to Paginated", () {
      final paginated = testPaginatedDto.toDomain();

      expect(paginated.items.length, equals(testPaginatedDto.items.length));
      expect(paginated.page, equals(testPaginatedDto.currentPage));
      expect(paginated.hasNextPage, equals(testPaginatedDto.hasNextPage));
    });
  });
}
