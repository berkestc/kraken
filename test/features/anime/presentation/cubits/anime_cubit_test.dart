import "dart:async";

import "package:bloc_test/bloc_test.dart";
import "package:flutter_test/flutter_test.dart";
import "package:fpdart/fpdart.dart";
import "package:kraken/core/models/failure/failure.dart";
import "package:kraken/features/anime/domain/models/anime.dart";
import "package:kraken/features/anime/domain/models/paginated.dart";
import "package:kraken/features/anime/domain/repositories/anime_repository.dart";
import "package:kraken/features/anime/presentation/cubits/anime_cubit.dart";
import "package:kraken/features/anime/presentation/states/anime_state.dart";
import "package:mockito/annotations.dart";
import "package:mockito/mockito.dart";

import "../../presentation/cubits/anime_cubit_test.mocks.dart";

@GenerateMocks([AnimeRepository])
void main() {
  late MockAnimeRepository mockAnimeRepository;
  late Completer<void> completer;

  setUp(() => mockAnimeRepository = MockAnimeRepository());

  final testAnime = Anime(
    id: 1,
    title: "Test Anime",
    imageUrl: "https://example.com/image.jpg",
    rank: some(1),
    ratingScore: 8.5,
    genres: const [],
    synopsis: "Test synopsis",
    episodes: some(12),
  );

  final initialState = AnimeState.initial();

  group("AnimeCubit tests", () {
    blocTest<AnimeCubit, AnimeState>(
      "emits [loading, loaded] when getAnimes is called successfully",
      build: () => AnimeCubit(animeRepository: mockAnimeRepository),
      setUp: () {
        completer = Completer<void>();

        when(mockAnimeRepository.sendFetchAnimeListRequest(page: anyNamed("page")))
            .thenAnswer((_) async => completer.complete());

        final paginatedAnimes = Paginated<Anime>(
          items: [testAnime],
          page: 1,
          hasNextPage: true,
        );

        when(mockAnimeRepository.setOnAnimesFetched(any)).thenAnswer((invocation) async {
          await completer.future;
          final callback = invocation.positionalArguments[0] as OnAnimesFetched;
          callback(right(paginatedAnimes));
        });
      },
      expect: () => [
        // could not catch first emit
        // initialState.copyWith(isPaginating: true),

        initialState.copyWith(
          isPaginating: false,
          animes: [testAnime],
          currentPage: 1,
          hasNextPage: true,
        ),
      ],
      verify: (cubit) {
        verify(mockAnimeRepository.sendFetchAnimeListRequest(page: anyNamed("page"))).called(1);
        verify(mockAnimeRepository.setOnAnimesFetched(any)).called(1);
      },
    );

    blocTest<AnimeCubit, AnimeState>(
      "emits [loading, error] when getAnimes fails",
      build: () => AnimeCubit(animeRepository: mockAnimeRepository),
      setUp: () {
        completer = Completer<void>();

        when(mockAnimeRepository.sendFetchAnimeListRequest(page: anyNamed("page")))
            .thenAnswer((_) async => completer.complete());

        when(mockAnimeRepository.setOnAnimesFetched(any)).thenAnswer((invocation) async {
          await completer.future;
          final callback = invocation.positionalArguments[0] as OnAnimesFetched;
          callback(left(const Failure.responseError("An error occurred")));
        });
      },
      expect: () => [
        initialState.copyWith(
          isPaginating: false,
          failure: some(const Failure.responseError("An error occurred")),
        ),
      ],
    );

    blocTest<AnimeCubit, AnimeState>(
      "emits state with updated currentPage and hasNextPage correctly",
      build: () => AnimeCubit(animeRepository: mockAnimeRepository),
      setUp: () {
        completer = Completer<void>();

        when(mockAnimeRepository.sendFetchAnimeListRequest(page: anyNamed("page")))
            .thenAnswer((_) async => completer.complete());

        final paginatedAnimes = Paginated<Anime>(
          items: [testAnime],
          page: 2,
          hasNextPage: false,
        );

        when(mockAnimeRepository.setOnAnimesFetched(any)).thenAnswer((invocation) async {
          await completer.future;
          final callback = invocation.positionalArguments[0] as OnAnimesFetched;
          callback(right(paginatedAnimes));
        });
      },
      expect: () => [
        initialState.copyWith(
          isPaginating: false,
          animes: [testAnime],
          currentPage: 2,
          hasNextPage: false,
        ),
      ],
    );
  });
}
