import 'package:fpdart/fpdart.dart';
import 'package:kraken/features/anime/domain/models/paginated.dart';

import '../../../../core/models/failure/failure.dart';
import '../models/anime.dart';
import '../models/character.dart';

abstract class AnimeRepository {
  Future<Either<Failure, Paginated<Anime>>> getAnimes({int page = 1});
  Future<Either<Failure, List<Character>>> getCharacters(int animeId);
}
