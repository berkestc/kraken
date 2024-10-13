import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kraken/features/anime/domain/repositories/anime_repository.dart';

import '../states/anime_state.dart';

class AnimeCubit extends Cubit<AnimeState> {
  final AnimeRepository animeRepository;

  AnimeCubit({required this.animeRepository}) : super(AnimeState.initial()) {
    getAnimes();
  }

  Future<void> getAnimes() async {
    if (state.isPaginating || !state.hasNextPage) return;

    emit(state.copyWith(isPaginating: true));

    final result = await animeRepository.getAnimes(page: state.currentPage + 1);

    emit(
      state.copyWith(
        isPaginating: false,
        isLoading: false,
        animes: result.fold((l) => state.animes, (r) => [...state.animes, ...r.items]),
        hasNextPage: result.fold((l) => state.hasNextPage, (r) => r.hasNextPage),
        currentPage: result.fold((l) => state.currentPage, (r) => r.page),
        failure: result.getLeft(),
      ),
    );
  }
}
