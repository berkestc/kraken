import "package:auto_route/auto_route.dart";
import "package:bloc_test/bloc_test.dart";
import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";
import "package:flutter_test/flutter_test.dart";
import "package:fpdart/fpdart.dart";
import "package:kraken/constants/sizes.dart";
import "package:kraken/core/injections/locator.dart";
import "package:kraken/features/anime/domain/models/anime.dart";
import "package:kraken/features/anime/presentation/cubits/anime_cubit.dart";
import "package:kraken/features/anime/presentation/pages/anime_detail_page.dart";
import "package:kraken/features/anime/presentation/pages/animes_page.dart";
import "package:kraken/features/anime/presentation/states/anime_state.dart";
import "package:kraken/router/router.dart";
import "package:mocktail/mocktail.dart";

class MockAnimeCubit extends MockCubit<AnimeState> implements AnimeCubit {}

void main() {
  late MockAnimeCubit mockAnimeCubit;

  setUp(() async {
    mockAnimeCubit = MockAnimeCubit();
    when(() => mockAnimeCubit.getAnimes()).thenAnswer((_) => Future.value());

    TestWidgetsFlutterBinding.ensureInitialized();
  });

  configureDependencies();

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

  Future<void> pumpAnimesPage(WidgetTester tester) async {
    final appRouter = getIt<AppRouter>();

    await tester.pumpWidget(
      BlocProvider<AnimeCubit>.value(
        value: mockAnimeCubit,
        child: ScreenUtilInit(
          designSize: designSize,
          builder: (context, child) => MaterialApp.router(
            routeInformationParser: appRouter.defaultRouteParser(),
            routerDelegate: AutoRouterDelegate(
              appRouter,
              navigatorObservers: () => [AutoRouteObserver()],
            ),
            builder: (context, child) => MediaQuery(
              data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
              child: child!,
            ),
          ),
        ),
      ),
    );

    await tester.pump();
  }

  group("AnimesPage Widget Tests", () {
    testWidgets("Displays loading indicator when loading", (widgetTester) async {
      when(() => mockAnimeCubit.state).thenReturn(initialState.copyWith(isLoading: true));

      await pumpAnimesPage(widgetTester);

      expect(find.byType(CircularProgressIndicator), findsOneWidget);
    });

    testWidgets("Displays anime list when loading is complete", (widgetTester) async {
      when(() => mockAnimeCubit.state).thenReturn(
        initialState.copyWith(
          isLoading: false,
          animes: [testAnime],
        ),
      );

      await pumpAnimesPage(widgetTester);

      expect(find.text("Test Anime"), findsOneWidget);
      expect(find.byType(AnimeItem), findsOneWidget);
    });

    testWidgets("Scrolls to load more animes", (widgetTester) async {
      when(() => mockAnimeCubit.state).thenReturn(
        initialState.copyWith(
          isLoading: false,
          animes: [testAnime],
          currentPage: 1,
          hasNextPage: true,
        ),
      );

      await pumpAnimesPage(widgetTester);

      expect(find.text("Test Anime"), findsOneWidget);

      final scrollableFinder = find.byType(GridView);
      await widgetTester.drag(scrollableFinder, const Offset(0, -500));
      await widgetTester.pump();

      verify(() => mockAnimeCubit.getAnimes()).called(1);
    });

    // TODO: Find a way to test this. Fails at the moment.
    testWidgets("Navigates to AnimeDetailPage when anime is tapped", (widgetTester) async {
      when(() => mockAnimeCubit.state).thenAnswer(
        (_) => initialState.copyWith(
          isLoading: false,
          animes: [testAnime],
        ),
      );

      await pumpAnimesPage(widgetTester);

      final animeImageFinder = find.byType(AnimeImage);

      await widgetTester.ensureVisible(animeImageFinder);
      await widgetTester.pump();

      await widgetTester.tap(animeImageFinder);
      await widgetTester.pumpAndSettle();

      expect(find.byType(AnimesDetailPage), findsOneWidget);
    });
  });
}
