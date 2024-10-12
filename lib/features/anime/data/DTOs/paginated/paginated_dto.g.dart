// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PaginatedDto<T> _$$_PaginatedDtoFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    _$_PaginatedDto<T>(
      items: (json['data'] as List<dynamic>).map(fromJsonT).toList(),
      currentPage: fromPaginationJson(json, 'current_page') as int,
      hasNextPage: fromPaginationJson(json, 'has_next_page') as bool,
    );

Map<String, dynamic> _$$_PaginatedDtoToJson<T>(
  _$_PaginatedDto<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'data': instance.items.map(toJsonT).toList(),
      'current_page': instance.currentPage,
      'has_next_page': instance.hasNextPage,
    };
