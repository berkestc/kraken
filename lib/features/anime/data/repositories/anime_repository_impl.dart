import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:kraken/constants/endpoints.dart';
import 'package:kraken/core/models/failure/failure.dart';
import 'package:kraken/features/anime/data/DTOs/anime/anime_dto.dart';
import 'package:kraken/features/anime/data/DTOs/paginated/paginated_dto.dart';
import 'package:kraken/features/anime/domain/models/anime.dart';
import 'package:kraken/features/anime/domain/models/character.dart';
import 'package:kraken/features/anime/domain/models/paginated.dart';
import 'package:kraken/services/network/network_service.dart';
import 'package:kraken/services/platform/platform_service.dart';

import '../../../../constants/failure_messages.dart';
import '../../domain/repositories/anime_repository.dart';
import '../DTOs/character/character_dto.dart';

@LazySingleton(as: AnimeRepository)
class AnimeRepositoryImpl implements AnimeRepository {
  final PlatformService platformService;
  final NetworkService networkService;

  OnAnimesFetched? _onAnimesFetched;

  AnimeRepositoryImpl({
    required this.platformService,
    required this.networkService,
  }) {
    platformService.initialize(_getAnimes);
  }

  @override
  Future<void> sendFetchAnimeListRequest({int page = 1}) async {
    platformService.sendFetchAnimeListRequest(page: page);
  }

  Future<void> _getAnimes(int page) async {
    final response = await networkService.get(
      Endpoints.animes,
      queryParameters: {"page": page, "limit": 20},
    );

    final result = response.fold<Either<Failure, Paginated<Anime>>>(
      left,
      (r) {
        try {
          return right(
            PaginatedDto.fromJson(r.data!, (e) => AnimeDto.fromJson(e! as Map<String, dynamic>).toDomain()).toDomain(),
          );
        } catch (e) {
          return left(const Failure.responseError(responseErrorMessage));
        }
      },
    );

    _onAnimesFetched?.call(result);
  }

  @override
  void setOnAnimesFetched(OnAnimesFetched onAnimesFetched) {
    _onAnimesFetched = onAnimesFetched;
  }

  @override
  Future<Either<Failure, List<Character>>> getCharacters(int animeId) async {
    final result = await networkService.get(Endpoints.characters(animeId.toString()));

    return result.fold(
      left,
      (r) {
        try {
          final characters = (r.data?["data"] as List)
              .cast<Map<String, dynamic>>()
              .map((e) => CharacterDto.fromJson(e["character"] as Map<String, dynamic>).toDomain())
              .toList();

          return right(characters);
        } catch (e) {
          return left(const Failure.responseError(responseErrorMessage));
        }
      },
    );
  }
}
