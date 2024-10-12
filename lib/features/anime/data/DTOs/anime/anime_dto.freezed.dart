// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'anime_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AnimeDto _$AnimeDtoFromJson(Map<String, dynamic> json) {
  return _AnimeDto.fromJson(json);
}

/// @nodoc
mixin _$AnimeDto {
  @JsonKey(name: "mal_id")
  int get id => throw _privateConstructorUsedError;
  int get rank => throw _privateConstructorUsedError;
  int get episodes => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  @LargeImageUrlConverter()
  @JsonKey(name: "images")
  String get imageUrl => throw _privateConstructorUsedError;
  String get synopsis => throw _privateConstructorUsedError;
  double get score => throw _privateConstructorUsedError;
  List<GenreDto> get genres => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AnimeDtoCopyWith<AnimeDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnimeDtoCopyWith<$Res> {
  factory $AnimeDtoCopyWith(AnimeDto value, $Res Function(AnimeDto) then) =
      _$AnimeDtoCopyWithImpl<$Res, AnimeDto>;
  @useResult
  $Res call(
      {@JsonKey(name: "mal_id") int id,
      int rank,
      int episodes,
      String title,
      @LargeImageUrlConverter() @JsonKey(name: "images") String imageUrl,
      String synopsis,
      double score,
      List<GenreDto> genres});
}

/// @nodoc
class _$AnimeDtoCopyWithImpl<$Res, $Val extends AnimeDto>
    implements $AnimeDtoCopyWith<$Res> {
  _$AnimeDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? rank = null,
    Object? episodes = null,
    Object? title = null,
    Object? imageUrl = null,
    Object? synopsis = null,
    Object? score = null,
    Object? genres = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      rank: null == rank
          ? _value.rank
          : rank // ignore: cast_nullable_to_non_nullable
              as int,
      episodes: null == episodes
          ? _value.episodes
          : episodes // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      synopsis: null == synopsis
          ? _value.synopsis
          : synopsis // ignore: cast_nullable_to_non_nullable
              as String,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double,
      genres: null == genres
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<GenreDto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AnimeDtoCopyWith<$Res> implements $AnimeDtoCopyWith<$Res> {
  factory _$$_AnimeDtoCopyWith(
          _$_AnimeDto value, $Res Function(_$_AnimeDto) then) =
      __$$_AnimeDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "mal_id") int id,
      int rank,
      int episodes,
      String title,
      @LargeImageUrlConverter() @JsonKey(name: "images") String imageUrl,
      String synopsis,
      double score,
      List<GenreDto> genres});
}

/// @nodoc
class __$$_AnimeDtoCopyWithImpl<$Res>
    extends _$AnimeDtoCopyWithImpl<$Res, _$_AnimeDto>
    implements _$$_AnimeDtoCopyWith<$Res> {
  __$$_AnimeDtoCopyWithImpl(
      _$_AnimeDto _value, $Res Function(_$_AnimeDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? rank = null,
    Object? episodes = null,
    Object? title = null,
    Object? imageUrl = null,
    Object? synopsis = null,
    Object? score = null,
    Object? genres = null,
  }) {
    return _then(_$_AnimeDto(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      rank: null == rank
          ? _value.rank
          : rank // ignore: cast_nullable_to_non_nullable
              as int,
      episodes: null == episodes
          ? _value.episodes
          : episodes // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      synopsis: null == synopsis
          ? _value.synopsis
          : synopsis // ignore: cast_nullable_to_non_nullable
              as String,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double,
      genres: null == genres
          ? _value._genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<GenreDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AnimeDto extends _AnimeDto {
  const _$_AnimeDto(
      {@JsonKey(name: "mal_id") required this.id,
      required this.rank,
      required this.episodes,
      required this.title,
      @LargeImageUrlConverter() @JsonKey(name: "images") required this.imageUrl,
      required this.synopsis,
      required this.score,
      required final List<GenreDto> genres})
      : _genres = genres,
        super._();

  factory _$_AnimeDto.fromJson(Map<String, dynamic> json) =>
      _$$_AnimeDtoFromJson(json);

  @override
  @JsonKey(name: "mal_id")
  final int id;
  @override
  final int rank;
  @override
  final int episodes;
  @override
  final String title;
  @override
  @LargeImageUrlConverter()
  @JsonKey(name: "images")
  final String imageUrl;
  @override
  final String synopsis;
  @override
  final double score;
  final List<GenreDto> _genres;
  @override
  List<GenreDto> get genres {
    if (_genres is EqualUnmodifiableListView) return _genres;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_genres);
  }

  @override
  String toString() {
    return 'AnimeDto(id: $id, rank: $rank, episodes: $episodes, title: $title, imageUrl: $imageUrl, synopsis: $synopsis, score: $score, genres: $genres)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AnimeDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.rank, rank) || other.rank == rank) &&
            (identical(other.episodes, episodes) ||
                other.episodes == episodes) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.synopsis, synopsis) ||
                other.synopsis == synopsis) &&
            (identical(other.score, score) || other.score == score) &&
            const DeepCollectionEquality().equals(other._genres, _genres));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, rank, episodes, title,
      imageUrl, synopsis, score, const DeepCollectionEquality().hash(_genres));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AnimeDtoCopyWith<_$_AnimeDto> get copyWith =>
      __$$_AnimeDtoCopyWithImpl<_$_AnimeDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AnimeDtoToJson(
      this,
    );
  }
}

abstract class _AnimeDto extends AnimeDto {
  const factory _AnimeDto(
      {@JsonKey(name: "mal_id") required final int id,
      required final int rank,
      required final int episodes,
      required final String title,
      @LargeImageUrlConverter()
      @JsonKey(name: "images")
      required final String imageUrl,
      required final String synopsis,
      required final double score,
      required final List<GenreDto> genres}) = _$_AnimeDto;
  const _AnimeDto._() : super._();

  factory _AnimeDto.fromJson(Map<String, dynamic> json) = _$_AnimeDto.fromJson;

  @override
  @JsonKey(name: "mal_id")
  int get id;
  @override
  int get rank;
  @override
  int get episodes;
  @override
  String get title;
  @override
  @LargeImageUrlConverter()
  @JsonKey(name: "images")
  String get imageUrl;
  @override
  String get synopsis;
  @override
  double get score;
  @override
  List<GenreDto> get genres;
  @override
  @JsonKey(ignore: true)
  _$$_AnimeDtoCopyWith<_$_AnimeDto> get copyWith =>
      throw _privateConstructorUsedError;
}
