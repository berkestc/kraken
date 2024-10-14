// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    AnimesDetailRoute.name: (routeData) {
      final args = routeData.argsAs<AnimesDetailRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: WrappedRoute(child: AnimesDetailPage(anime: args.anime)),
      );
    },
    AnimesRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: WrappedRoute(child: AnimesPage()),
      );
    },
  };
}

/// generated route for
/// [AnimesDetailPage]
class AnimesDetailRoute extends PageRouteInfo<AnimesDetailRouteArgs> {
  AnimesDetailRoute({
    required Anime anime,
    List<PageRouteInfo>? children,
  }) : super(
          AnimesDetailRoute.name,
          args: AnimesDetailRouteArgs(anime: anime),
          initialChildren: children,
        );

  static const String name = 'AnimesDetailRoute';

  static const PageInfo<AnimesDetailRouteArgs> page =
      PageInfo<AnimesDetailRouteArgs>(name);
}

class AnimesDetailRouteArgs {
  const AnimesDetailRouteArgs({required this.anime});

  final Anime anime;

  @override
  String toString() {
    return 'AnimesDetailRouteArgs{anime: $anime}';
  }
}

/// generated route for
/// [AnimesPage]
class AnimesRoute extends PageRouteInfo<void> {
  const AnimesRoute({List<PageRouteInfo>? children})
      : super(
          AnimesRoute.name,
          initialChildren: children,
        );

  static const String name = 'AnimesRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
