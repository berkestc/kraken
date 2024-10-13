import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kraken/core/injections/locator.dart';
import 'package:kraken/features/anime/domain/models/anime.dart';
import 'package:kraken/features/anime/presentation/cubits/anime_cubit.dart';
import 'package:kraken/router/router.dart';

import '../states/anime_state.dart';

@RoutePage()
class AnimesPage extends StatelessWidget {
  const AnimesPage();

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
        mainAxisSpacing: 20.r,
        crossAxisSpacing: 10.r,
        childAspectRatio: 0.5,
      ),
      itemCount: animeState.animes.length,
      itemBuilder: (context, index) => _AnimeItem(animeState.animes[index]),
    );
  }
}

class _AnimeItem extends StatelessWidget {
  final Anime anime;

  const _AnimeItem(this.anime);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _AnimeImage(anime),
        SizedBox(height: 4.r),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _Title(anime.title),
            SizedBox(width: 4.r),
            _Rating(anime.ratingScore),
          ],
        ),
      ],
    );
  }
}

class _Title extends StatelessWidget {
  final String title;

  const _Title(this.title);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Text(
        title,
        style: Theme.of(context).textTheme.titleSmall,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}

class _Rating extends StatelessWidget {
  final double rating;

  const _Rating(this.rating);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          rating.toString(),
          style: Theme.of(context).textTheme.titleMedium,
        ),
        SizedBox(width: 4.w),
        Icon(Icons.star, color: Colors.amber, size: 20.r),
      ],
    );
  }
}

class _AnimeImage extends StatelessWidget {
  final Anime anime;

  const _AnimeImage(this.anime);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () => context.router.push(AnimesDetailRoute(anime: anime)),
        child: Hero(
          tag: anime.id,
          child: CachedNetworkImage(
            imageUrl: anime.imageUrl,
            width: double.infinity,
            fit: BoxFit.cover,
            imageBuilder: (context, imageProvider) => DecoratedBox(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4.r),
                image: DecorationImage(image: imageProvider, fit: BoxFit.cover),
              ),
            ),
          ),
        ),
      ),
    );
  }
}