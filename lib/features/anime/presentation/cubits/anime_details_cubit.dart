import 'package:flutter_bloc/flutter_bloc.dart';
import '../../domain/repositories/anime_repository.dart';

import '../states/anime_details_state.dart';

class AnimeDetailsCubit extends Cubit<AnimeDetailsState> {
  final AnimeRepository animeRepository;
  final int animeId;

  AnimeDetailsCubit({
    required this.animeRepository,
    required this.animeId,
  }) : super(AnimeDetailsState.initial()) {
    _getCharacters();
  }

  Future<void> _getCharacters() async {
    final result = await animeRepository.getCharacters(animeId);

    emit(
      state.copyWith(
        isLoading: false,
        characters: result.getOrElse((_) => state.characters),
        failure: result.getLeft(),
      ),
    );
  }
}
