import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kraken/features/anime/data/utils/converters.dart';
import 'package:kraken/features/anime/domain/models/paginated.dart';

part 'paginated_dto.freezed.dart';
part 'paginated_dto.g.dart';

@Freezed(genericArgumentFactories: true)
class PaginatedDto<T> with _$PaginatedDto<T> {
  @JsonSerializable(fieldRename: FieldRename.snake, genericArgumentFactories: true)
  const factory PaginatedDto({
    @JsonKey(name: "data") required List<T> items,
    @JsonKey(readValue: fromPaginationJson) required int currentPage,
    @JsonKey(readValue: fromPaginationJson) required bool hasNextPage,
  }) = _PaginatedDto;

  const PaginatedDto._();

  factory PaginatedDto.fromJson(Map<String, Object?> json, T Function(Object?) fromJsonT) =>
      _$PaginatedDtoFromJson(json, fromJsonT);

  Paginated<T> toDomain() {
    return Paginated<T>(
      items: items,
      page: currentPage,
      hasNextPage: hasNextPage,
    );
  }
}