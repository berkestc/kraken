import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../../../common/sliver_sized_box.dart';
import '../../../../constants/constants.dart';
import '../../../../core/injections/locator.dart';
import '../../../../core/models/failure/failure.dart';
import '../../domain/models/anime.dart';
import '../../domain/models/character.dart';
import '../cubits/anime_details_cubit.dart';

@RoutePage()
class AnimesDetailPage extends StatelessWidget implements AutoRouteWrapper {
  final Anime anime;

  const AnimesDetailPage({required this.anime});

  @override
  Widget wrappedRoute(BuildContext context) {
    if (isTestMode) {
      return this;
    }

    return MultiProvider(
      providers: [
        Provider.value(value: anime),
        BlocProvider(
          create: (context) => AnimeDetailsCubit(animeRepository: getIt(), animeId: anime.id),
        ),
      ],
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Details")),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.r),
                  child: Column(
                    children: [
                      const _Image(),
                      SizedBox(height: 12.h),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const _Title(),
                                SizedBox(height: 2.h),
                                const _Genres(),
                              ],
                            ),
                          ),
                          SizedBox(width: 8.w),
                          const _Rating(),
                        ],
                      ),
                      SizedBox(height: 12.h),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const _Synopsis(),
          SliverSizedBox(height: 12.h),
          const _CharactersTitle(),
          SliverSizedBox(height: 12.h),
          const _Characters(),
          SliverSizedBox(height: 12.h),
        ],
      ),
    );
  }
}

class _Image extends StatelessWidget {
  const _Image();

  @override
  Widget build(BuildContext context) {
    final anime = context.read<Anime>();

    return Hero(
      tag: anime.id,
      child: CachedNetworkImage(
        width: double.infinity,
        height: 250.h,
        imageUrl: anime.imageUrl,
        fit: BoxFit.cover,
        imageBuilder: (context, imageProvider) => DecoratedBox(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4.r),
            image: DecorationImage(image: imageProvider, fit: BoxFit.cover),
          ),
        ),
      ),
    );
  }
}

class _Title extends StatelessWidget {
  const _Title();

  @override
  Widget build(BuildContext context) {
    final anime = context.read<Anime>();

    return Text(
      anime.title,
      style: Theme.of(context).textTheme.titleLarge,
    );
  }
}

class _Rating extends StatelessWidget {
  const _Rating();

  @override
  Widget build(BuildContext context) {
    final anime = context.read<Anime>();

    return Row(
      children: [
        Text(
          anime.ratingScore.toString(),
          style: Theme.of(context).textTheme.titleMedium,
        ),
        SizedBox(width: 4.w),
        Icon(Icons.star, color: Colors.amber, size: 20.r),
      ],
    );
  }
}

class _Synopsis extends StatelessWidget {
  const _Synopsis();

  @override
  Widget build(BuildContext context) {
    final anime = context.read<Anime>();

    return SliverPadding(
      padding: EdgeInsets.symmetric(horizontal: 8.r),
      sliver: SliverToBoxAdapter(
        child: Text(
          anime.synopsis,
          style: Theme.of(context).textTheme.bodySmall,
        ),
      ),
    );
  }
}

class _Genres extends StatelessWidget {
  const _Genres();

  @override
  Widget build(BuildContext context) {
    final anime = context.read<Anime>();

    return Text(
      anime.genres.map((e) => e.name).join(', '),
      style: Theme.of(context).textTheme.headlineSmall,
    );
  }
}

class _CharactersTitle extends StatelessWidget {
  const _CharactersTitle();

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: EdgeInsets.symmetric(horizontal: 8.r),
      sliver: SliverToBoxAdapter(
        child: Text(
          "Characters",
          style: Theme.of(context).textTheme.headlineLarge,
        ),
      ),
    );
  }
}

class _Characters extends StatelessWidget {
  const _Characters();

  @override
  Widget build(BuildContext context) {
    final animeDetailsState = context.watch<AnimeDetailsCubit>().state;

    if (animeDetailsState.isLoading) return const _Loading();

    return SliverSafeArea(
      sliver: SliverPadding(
        padding: EdgeInsets.symmetric(horizontal: 8.r),
        sliver: animeDetailsState.failure.fold(
          () => SliverGrid.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 4.r,
              childAspectRatio: 0.42,
            ),
            itemCount: animeDetailsState.characters.length,
            itemBuilder: (context, index) => _CharacterItem(animeDetailsState.characters[index]),
          ),
          _Failure.new,
        ),
      ),
    );
  }
}

class _Loading extends StatelessWidget {
  const _Loading();

  @override
  Widget build(BuildContext context) {
    return const SliverToBoxAdapter(
      child: Center(child: CircularProgressIndicator()),
    );
  }
}

class _Failure extends StatelessWidget {
  final Failure failure;

  const _Failure(this.failure);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(child: Text(failure.message));
  }
}

class _CharacterItem extends StatelessWidget {
  final Character character;

  const _CharacterItem(this.character);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _CharacterName(character.name),
        SizedBox(height: 4.h),
        _CharacterImage(character.imageUrl),
      ],
    );
  }
}

class _CharacterName extends StatelessWidget {
  final String name;

  const _CharacterName(this.name);

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style: Theme.of(context).textTheme.titleSmall,
      textAlign: TextAlign.center,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
    );
  }
}

class _CharacterImage extends StatelessWidget {
  final String imageUrl;

  const _CharacterImage(this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      key: ValueKey(imageUrl),
      height: 250.h,
      width: double.infinity,
      imageUrl: imageUrl,
      fit: BoxFit.cover,
      imageBuilder: (context, imageProvider) => DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4.r),
          image: DecorationImage(
            image: imageProvider,
            fit: BoxFit.cover,
            alignment: Alignment.topCenter,
          ),
        ),
      ),
    );
  }
}
