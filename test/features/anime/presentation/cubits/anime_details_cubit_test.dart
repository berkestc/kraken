import "package:bloc_test/bloc_test.dart";
import "package:flutter_test/flutter_test.dart";
import "package:fpdart/fpdart.dart";
import "package:kraken/core/models/failure/failure.dart";
import "package:kraken/features/anime/domain/models/character.dart";
import "package:kraken/features/anime/presentation/cubits/anime_details_cubit.dart";
import "package:kraken/features/anime/presentation/states/anime_details_state.dart";
import "package:mockito/mockito.dart";

import "anime_cubit_test.mocks.dart";

void main() {
  late MockAnimeRepository mockAnimeRepository;
  const int animeId = 1;

  setUp(() => mockAnimeRepository = MockAnimeRepository());

  const testCharacter = Character(
    id: 1,
    name: "Test Character",
    imageUrl: "https://example.com/character.jpg",
  );

  final initialState = AnimeDetailsState.initial();

  group("AnimeDetailsCubit tests", () {
    blocTest<AnimeDetailsCubit, AnimeDetailsState>(
      "emits [loading, loaded] when _getCharacters is called successfully",
      build: () => AnimeDetailsCubit(animeRepository: mockAnimeRepository, animeId: animeId),
      setUp: () {
        when(mockAnimeRepository.getCharacters(animeId)).thenAnswer((_) async {
          return right([testCharacter]);
        });
      },
      expect: () => [
        initialState.copyWith(
          isLoading: false,
          characters: [testCharacter],
        ),
      ],
      verify: (cubit) {
        verify(mockAnimeRepository.getCharacters(animeId)).called(1);
      },
    );

    blocTest<AnimeDetailsCubit, AnimeDetailsState>(
      "emits [loading, error] when _getCharacters fails",
      build: () => AnimeDetailsCubit(animeRepository: mockAnimeRepository, animeId: animeId),
      setUp: () {
        when(mockAnimeRepository.getCharacters(animeId)).thenAnswer((_) async {
          return left(const Failure.responseError("An error occurred"));
        });
      },
      expect: () => [
        initialState.copyWith(
          isLoading: false,
          failure: some(const Failure.responseError("An error occurred")),
        ),
      ],
    );

    blocTest<AnimeDetailsCubit, AnimeDetailsState>(
      "emits state with empty character list when no characters are found",
      build: () => AnimeDetailsCubit(animeRepository: mockAnimeRepository, animeId: animeId),
      setUp: () {
        when(mockAnimeRepository.getCharacters(animeId)).thenAnswer((_) async {
          return right([]);
        });
      },
      expect: () => [
        initialState.copyWith(
          isLoading: false,
          characters: [],
        ),
      ],
    );
  });
}
