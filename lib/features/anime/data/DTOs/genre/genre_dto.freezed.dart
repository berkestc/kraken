// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'genre_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GenreDto _$GenreDtoFromJson(Map<String, dynamic> json) {
  return _GenreDto.fromJson(json);
}

/// @nodoc
mixin _$GenreDto {
  @JsonKey(name: "mal_id")
  int get id => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GenreDtoCopyWith<GenreDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenreDtoCopyWith<$Res> {
  factory $GenreDtoCopyWith(GenreDto value, $Res Function(GenreDto) then) =
      _$GenreDtoCopyWithImpl<$Res, GenreDto>;
  @useResult
  $Res call(
      {@JsonKey(name: "mal_id") int id, String type, String name, String url});
}

/// @nodoc
class _$GenreDtoCopyWithImpl<$Res, $Val extends GenreDto>
    implements $GenreDtoCopyWith<$Res> {
  _$GenreDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? name = null,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GenreDtoCopyWith<$Res> implements $GenreDtoCopyWith<$Res> {
  factory _$$_GenreDtoCopyWith(
          _$_GenreDto value, $Res Function(_$_GenreDto) then) =
      __$$_GenreDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "mal_id") int id, String type, String name, String url});
}

/// @nodoc
class __$$_GenreDtoCopyWithImpl<$Res>
    extends _$GenreDtoCopyWithImpl<$Res, _$_GenreDto>
    implements _$$_GenreDtoCopyWith<$Res> {
  __$$_GenreDtoCopyWithImpl(
      _$_GenreDto _value, $Res Function(_$_GenreDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? name = null,
    Object? url = null,
  }) {
    return _then(_$_GenreDto(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GenreDto extends _GenreDto {
  const _$_GenreDto(
      {@JsonKey(name: "mal_id") required this.id,
      required this.type,
      required this.name,
      required this.url})
      : super._();

  factory _$_GenreDto.fromJson(Map<String, dynamic> json) =>
      _$$_GenreDtoFromJson(json);

  @override
  @JsonKey(name: "mal_id")
  final int id;
  @override
  final String type;
  @override
  final String name;
  @override
  final String url;

  @override
  String toString() {
    return 'GenreDto(id: $id, type: $type, name: $name, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GenreDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, type, name, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GenreDtoCopyWith<_$_GenreDto> get copyWith =>
      __$$_GenreDtoCopyWithImpl<_$_GenreDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GenreDtoToJson(
      this,
    );
  }
}

abstract class _GenreDto extends GenreDto {
  const factory _GenreDto(
      {@JsonKey(name: "mal_id") required final int id,
      required final String type,
      required final String name,
      required final String url}) = _$_GenreDto;
  const _GenreDto._() : super._();

  factory _GenreDto.fromJson(Map<String, dynamic> json) = _$_GenreDto.fromJson;

  @override
  @JsonKey(name: "mal_id")
  int get id;
  @override
  String get type;
  @override
  String get name;
  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$_GenreDtoCopyWith<_$_GenreDto> get copyWith =>
      throw _privateConstructorUsedError;
}
