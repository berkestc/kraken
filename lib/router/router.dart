import 'package:auto_route/auto_route.dart';

import '../features/anime/domain/models/anime.dart';
import '../features/anime/presentation/pages/anime_detail_page.dart';
import '../features/anime/presentation/pages/animes_page.dart';

part 'router.gr.dart';

@AutoRouterConfig(replaceInRouteName: "Page|Screen|View|Widget,Route")
class AppRouter extends _$AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.cupertino();

  @override
  final List<AutoRoute> routes = [
    AutoRoute(page: AnimesRoute.page, initial: true),
    AutoRoute(page: AnimesDetailRoute.page),
  ];
}
