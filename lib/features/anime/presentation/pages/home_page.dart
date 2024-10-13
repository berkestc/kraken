import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kraken/core/injections/locator.dart';
import 'package:kraken/features/anime/domain/models/anime.dart';
import 'package:kraken/features/anime/presentation/cubits/anime_cubit.dart';

import '../states/anime_state.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AnimeCubit(animeRepository: getIt()),
      child: Scaffold(
        appBar: AppBar(title: const Text("Animes")),
        body: BlocSelector<AnimeCubit, AnimeState, bool>(
          selector: (state) => state.isLoading,
          builder: (context, isLoading) {
            if (isLoading) {
              return const _Loading();
            }

            return const _Animes();
          },
        ),
      ),
    );
  }
}

class _Loading extends StatelessWidget {
  const _Loading();

  @override
  Widget build(BuildContext context) {
    return const Center(child: CircularProgressIndicator());
  }
}

class _Animes extends HookWidget {
  const _Animes();

  @override
  Widget build(BuildContext context) {
    final animeState = context.watch<AnimeCubit>().state;

    final controller = useScrollController();

    useEffect(
      () {
        controller.addListener(() {
          if (controller.position.pixels >= controller.position.maxScrollExtent * 0.66) {
            context.read<AnimeCubit>().getAnimes();
          }
        });

        return null;
      },
      [controller],
    );

    return GridView.builder(
      controller: controller,
      padding: EdgeInsets.all(10.r),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 10.r,
        crossAxisSpacing: 10.r,
        childAspectRatio: 0.6,
      ),
      itemCount: animeState.animes.length,
      itemBuilder: (context, index) => _Anime(animeState.animes[index]),
    );
  }
}

class _Anime extends StatelessWidget {
  final Anime anime;

  const _Anime(this.anime);

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: anime.imageUrl,
      fit: BoxFit.cover,
      imageBuilder: (context, imageProvider) => DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4.r),
          image: DecorationImage(image: imageProvider, fit: BoxFit.cover),
        ),
      ),
    );
  }
}
