// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'paginated_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PaginatedDto<T> _$PaginatedDtoFromJson<T>(
    Map<String, dynamic> json, T Function(Object?) fromJsonT) {
  return _PaginatedDto<T>.fromJson(json, fromJsonT);
}

/// @nodoc
mixin _$PaginatedDto<T> {
  @JsonKey(name: "data")
  List<T> get items => throw _privateConstructorUsedError;
  @JsonKey(readValue: fromPaginationJson)
  int get currentPage => throw _privateConstructorUsedError;
  @JsonKey(readValue: fromPaginationJson)
  bool get hasNextPage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson(Object? Function(T) toJsonT) =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaginatedDtoCopyWith<T, PaginatedDto<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginatedDtoCopyWith<T, $Res> {
  factory $PaginatedDtoCopyWith(
          PaginatedDto<T> value, $Res Function(PaginatedDto<T>) then) =
      _$PaginatedDtoCopyWithImpl<T, $Res, PaginatedDto<T>>;
  @useResult
  $Res call(
      {@JsonKey(name: "data") List<T> items,
      @JsonKey(readValue: fromPaginationJson) int currentPage,
      @JsonKey(readValue: fromPaginationJson) bool hasNextPage});
}

/// @nodoc
class _$PaginatedDtoCopyWithImpl<T, $Res, $Val extends PaginatedDto<T>>
    implements $PaginatedDtoCopyWith<T, $Res> {
  _$PaginatedDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? currentPage = null,
    Object? hasNextPage = null,
  }) {
    return _then(_value.copyWith(
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<T>,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      hasNextPage: null == hasNextPage
          ? _value.hasNextPage
          : hasNextPage // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PaginatedDtoCopyWith<T, $Res>
    implements $PaginatedDtoCopyWith<T, $Res> {
  factory _$$_PaginatedDtoCopyWith(
          _$_PaginatedDto<T> value, $Res Function(_$_PaginatedDto<T>) then) =
      __$$_PaginatedDtoCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "data") List<T> items,
      @JsonKey(readValue: fromPaginationJson) int currentPage,
      @JsonKey(readValue: fromPaginationJson) bool hasNextPage});
}

/// @nodoc
class __$$_PaginatedDtoCopyWithImpl<T, $Res>
    extends _$PaginatedDtoCopyWithImpl<T, $Res, _$_PaginatedDto<T>>
    implements _$$_PaginatedDtoCopyWith<T, $Res> {
  __$$_PaginatedDtoCopyWithImpl(
      _$_PaginatedDto<T> _value, $Res Function(_$_PaginatedDto<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? currentPage = null,
    Object? hasNextPage = null,
  }) {
    return _then(_$_PaginatedDto<T>(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<T>,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      hasNextPage: null == hasNextPage
          ? _value.hasNextPage
          : hasNextPage // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

@JsonSerializable(
    fieldRename: FieldRename.snake, genericArgumentFactories: true)
class _$_PaginatedDto<T> extends _PaginatedDto<T> {
  const _$_PaginatedDto(
      {@JsonKey(name: "data") required final List<T> items,
      @JsonKey(readValue: fromPaginationJson) required this.currentPage,
      @JsonKey(readValue: fromPaginationJson) required this.hasNextPage})
      : _items = items,
        super._();

  factory _$_PaginatedDto.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$$_PaginatedDtoFromJson(json, fromJsonT);

  final List<T> _items;
  @override
  @JsonKey(name: "data")
  List<T> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  @JsonKey(readValue: fromPaginationJson)
  final int currentPage;
  @override
  @JsonKey(readValue: fromPaginationJson)
  final bool hasNextPage;

  @override
  String toString() {
    return 'PaginatedDto<$T>(items: $items, currentPage: $currentPage, hasNextPage: $hasNextPage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaginatedDto<T> &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.hasNextPage, hasNextPage) ||
                other.hasNextPage == hasNextPage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_items), currentPage, hasNextPage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaginatedDtoCopyWith<T, _$_PaginatedDto<T>> get copyWith =>
      __$$_PaginatedDtoCopyWithImpl<T, _$_PaginatedDto<T>>(this, _$identity);

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$$_PaginatedDtoToJson<T>(this, toJsonT);
  }
}

abstract class _PaginatedDto<T> extends PaginatedDto<T> {
  const factory _PaginatedDto(
      {@JsonKey(name: "data") required final List<T> items,
      @JsonKey(readValue: fromPaginationJson) required final int currentPage,
      @JsonKey(readValue: fromPaginationJson)
      required final bool hasNextPage}) = _$_PaginatedDto<T>;
  const _PaginatedDto._() : super._();

  factory _PaginatedDto.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =
      _$_PaginatedDto<T>.fromJson;

  @override
  @JsonKey(name: "data")
  List<T> get items;
  @override
  @JsonKey(readValue: fromPaginationJson)
  int get currentPage;
  @override
  @JsonKey(readValue: fromPaginationJson)
  bool get hasNextPage;
  @override
  @JsonKey(ignore: true)
  _$$_PaginatedDtoCopyWith<T, _$_PaginatedDto<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
