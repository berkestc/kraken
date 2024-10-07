import 'package:auto_route/auto_route.dart';

import '../features/anime/presentation/pages/home_page.dart';

part 'router.gr.dart';

@AutoRouterConfig(replaceInRouteName: "Page|Screen|View|Widget,Route")
class AppRouter extends _$AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.cupertino();

  @override
  final List<AutoRoute> routes = [
    AutoRoute(page: HomeRoute.page, initial: true),
  ];
}
