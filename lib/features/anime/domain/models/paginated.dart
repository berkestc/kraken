import 'package:equatable/equatable.dart';

class Paginated<T> extends Equatable {
  final List<T> items;
  final int page;
  final bool hasNextPage;

  const Paginated({
    required this.items,
    required this.page,
    required this.hasNextPage,
  });

  @override
  List<Object?> get props => [page];
}
