import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/models/failure/failure.dart';
import '../../domain/models/character.dart';

part 'anime_details_state.freezed.dart';

@freezed
class AnimeDetailsState with _$AnimeDetailsState {
  const factory AnimeDetailsState({
    required bool isLoading,
    required List<Character> characters,
    required Option<Failure> failure,
  }) = _AnimeDetailsState;

  factory AnimeDetailsState.initial() => AnimeDetailsState(
        isLoading: true,
        characters: [],
        failure: none(),
      );
}
