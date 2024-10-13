import 'package:fpdart/fpdart.dart';
import 'package:kraken/features/anime/domain/models/paginated.dart';

import '../../../../core/models/failure/failure.dart';
import '../models/anime.dart';
import '../models/character.dart';

typedef OnAnimesFetched = void Function(Either<Failure, Paginated<Anime>>);

abstract class AnimeRepository {
  Future<void> sendFetchAnimeListRequest({int page = 1});
  void setOnAnimesFetched(OnAnimesFetched onAnimesFetched);

  Future<Either<Failure, List<Character>>> getCharacters(int animeId);
}
