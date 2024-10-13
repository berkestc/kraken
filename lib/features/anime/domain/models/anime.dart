import 'package:equatable/equatable.dart';
import 'package:fpdart/fpdart.dart';

import 'genre.dart';

class Anime extends Equatable {
  final int id;
  final Option<int> rank;
  final Option<int> episodes;
  final String title;
  final String imageUrl;
  final String synopsis;
  final double ratingScore;
  final List<Genre> genres;

  const Anime({
    required this.id,
    required this.title,
    required this.imageUrl,
    required this.rank,
    required this.ratingScore,
    required this.genres,
    required this.synopsis,
    required this.episodes,
  });

  @override
  List<Object?> get props => [id];
}
