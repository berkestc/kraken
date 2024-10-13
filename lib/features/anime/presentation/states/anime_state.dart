import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/models/failure/failure.dart';
import '../../domain/models/anime.dart';

part 'anime_state.freezed.dart';

@freezed
class AnimeState with _$AnimeState {
  const factory AnimeState({
    required bool isLoading,
    required List<Anime> animes,
    required int currentPage,
    required bool hasNextPage,
    required Option<Failure> failure,
    required bool isPaginating,
  }) = _AnimeState;

  factory AnimeState.initial() => AnimeState(
        isLoading: false,
        animes: [],
        currentPage: 0,
        hasNextPage: true,
        failure: none(),
        isPaginating: false,
      );
}
