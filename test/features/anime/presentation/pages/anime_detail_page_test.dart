import 'dart:io';

import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:kraken/constants/sizes.dart';
import 'package:kraken/core/models/failure/failure.dart';
import 'package:kraken/features/anime/domain/models/anime.dart';
import 'package:kraken/features/anime/domain/models/character.dart';
import 'package:kraken/features/anime/presentation/cubits/anime_details_cubit.dart';
import 'package:kraken/features/anime/presentation/pages/anime_detail_page.dart';
import 'package:kraken/features/anime/presentation/states/anime_details_state.dart';
import 'package:mocktail/mocktail.dart';
import 'package:provider/provider.dart';

class MockAnimeDetailsCubit extends MockCubit<AnimeDetailsState> implements AnimeDetailsCubit {}

class MockHttpClient extends Mock implements HttpClient {}

void main() {
  late MockAnimeDetailsCubit mockAnimeDetailsCubit;

  setUp(() => mockAnimeDetailsCubit = MockAnimeDetailsCubit());

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

  const testCharacter = Character(
    id: 1,
    name: "Test Character",
    imageUrl: "https://example.com/character.jpg",
  );

  final initialAnimeDetailsState = AnimeDetailsState.initial();

  Future<void> pumpAnimesDetailPage(WidgetTester tester) async {
    await tester.pumpWidget(
      ScreenUtilInit(
        designSize: designSize,
        builder: (context, child) => HttpOverrides.runZoned(
          () => MaterialApp(
            home: MultiProvider(
              providers: [
                Provider.value(value: testAnime),
                BlocProvider<AnimeDetailsCubit>.value(value: mockAnimeDetailsCubit),
              ],
              child: AnimesDetailPage(anime: testAnime),
            ),
          ),
          createHttpClient: (securityContext) => MockHttpClient(),
        ),
      ),
    );
    await tester.pump();
  }

  group("AnimesDetailPage Widget Tests", () {
    testWidgets("Displays loading indicator when loading", (tester) async {
      when(() => mockAnimeDetailsCubit.state).thenReturn(initialAnimeDetailsState.copyWith(isLoading: true));

      await pumpAnimesDetailPage(tester);

      expect(find.byType(CircularProgressIndicator), findsOneWidget);
    });

    testWidgets("Displays characters when loaded", (tester) async {
      when(() => mockAnimeDetailsCubit.state).thenReturn(
        initialAnimeDetailsState.copyWith(
          isLoading: false,
          characters: [testCharacter],
        ),
      );

      await pumpAnimesDetailPage(tester);

      expect(find.text(testCharacter.name), findsOneWidget);
      expect(find.byKey(ValueKey(testCharacter.imageUrl)), findsOneWidget);
    });

    testWidgets("Displays failure message when loading fails", (tester) async {
      when(() => mockAnimeDetailsCubit.state).thenReturn(
        initialAnimeDetailsState.copyWith(
          isLoading: false,
          failure: some(const Failure.responseError("Failed to load characters")),
        ),
      );

      await pumpAnimesDetailPage(tester);

      expect(find.text("Failed to load characters"), findsOneWidget);
    });
  });
}
