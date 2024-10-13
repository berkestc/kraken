// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'anime_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AnimeState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<Anime> get animes => throw _privateConstructorUsedError;
  int get currentPage => throw _privateConstructorUsedError;
  bool get hasNextPage => throw _privateConstructorUsedError;
  Option<Failure> get failure => throw _privateConstructorUsedError;
  bool get isPaginating => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AnimeStateCopyWith<AnimeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnimeStateCopyWith<$Res> {
  factory $AnimeStateCopyWith(
          AnimeState value, $Res Function(AnimeState) then) =
      _$AnimeStateCopyWithImpl<$Res, AnimeState>;
  @useResult
  $Res call(
      {bool isLoading,
      List<Anime> animes,
      int currentPage,
      bool hasNextPage,
      Option<Failure> failure,
      bool isPaginating});
}

/// @nodoc
class _$AnimeStateCopyWithImpl<$Res, $Val extends AnimeState>
    implements $AnimeStateCopyWith<$Res> {
  _$AnimeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? animes = null,
    Object? currentPage = null,
    Object? hasNextPage = null,
    Object? failure = null,
    Object? isPaginating = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      animes: null == animes
          ? _value.animes
          : animes // ignore: cast_nullable_to_non_nullable
              as List<Anime>,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      hasNextPage: null == hasNextPage
          ? _value.hasNextPage
          : hasNextPage // ignore: cast_nullable_to_non_nullable
              as bool,
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Option<Failure>,
      isPaginating: null == isPaginating
          ? _value.isPaginating
          : isPaginating // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AnimeStateCopyWith<$Res>
    implements $AnimeStateCopyWith<$Res> {
  factory _$$_AnimeStateCopyWith(
          _$_AnimeState value, $Res Function(_$_AnimeState) then) =
      __$$_AnimeStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      List<Anime> animes,
      int currentPage,
      bool hasNextPage,
      Option<Failure> failure,
      bool isPaginating});
}

/// @nodoc
class __$$_AnimeStateCopyWithImpl<$Res>
    extends _$AnimeStateCopyWithImpl<$Res, _$_AnimeState>
    implements _$$_AnimeStateCopyWith<$Res> {
  __$$_AnimeStateCopyWithImpl(
      _$_AnimeState _value, $Res Function(_$_AnimeState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? animes = null,
    Object? currentPage = null,
    Object? hasNextPage = null,
    Object? failure = null,
    Object? isPaginating = null,
  }) {
    return _then(_$_AnimeState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      animes: null == animes
          ? _value._animes
          : animes // ignore: cast_nullable_to_non_nullable
              as List<Anime>,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      hasNextPage: null == hasNextPage
          ? _value.hasNextPage
          : hasNextPage // ignore: cast_nullable_to_non_nullable
              as bool,
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Option<Failure>,
      isPaginating: null == isPaginating
          ? _value.isPaginating
          : isPaginating // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_AnimeState implements _AnimeState {
  const _$_AnimeState(
      {required this.isLoading,
      required final List<Anime> animes,
      required this.currentPage,
      required this.hasNextPage,
      required this.failure,
      required this.isPaginating})
      : _animes = animes;

  @override
  final bool isLoading;
  final List<Anime> _animes;
  @override
  List<Anime> get animes {
    if (_animes is EqualUnmodifiableListView) return _animes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_animes);
  }

  @override
  final int currentPage;
  @override
  final bool hasNextPage;
  @override
  final Option<Failure> failure;
  @override
  final bool isPaginating;

  @override
  String toString() {
    return 'AnimeState(isLoading: $isLoading, animes: $animes, currentPage: $currentPage, hasNextPage: $hasNextPage, failure: $failure, isPaginating: $isPaginating)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AnimeState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality().equals(other._animes, _animes) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.hasNextPage, hasNextPage) ||
                other.hasNextPage == hasNextPage) &&
            (identical(other.failure, failure) || other.failure == failure) &&
            (identical(other.isPaginating, isPaginating) ||
                other.isPaginating == isPaginating));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      const DeepCollectionEquality().hash(_animes),
      currentPage,
      hasNextPage,
      failure,
      isPaginating);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AnimeStateCopyWith<_$_AnimeState> get copyWith =>
      __$$_AnimeStateCopyWithImpl<_$_AnimeState>(this, _$identity);
}

abstract class _AnimeState implements AnimeState {
  const factory _AnimeState(
      {required final bool isLoading,
      required final List<Anime> animes,
      required final int currentPage,
      required final bool hasNextPage,
      required final Option<Failure> failure,
      required final bool isPaginating}) = _$_AnimeState;

  @override
  bool get isLoading;
  @override
  List<Anime> get animes;
  @override
  int get currentPage;
  @override
  bool get hasNextPage;
  @override
  Option<Failure> get failure;
  @override
  bool get isPaginating;
  @override
  @JsonKey(ignore: true)
  _$$_AnimeStateCopyWith<_$_AnimeState> get copyWith =>
      throw _privateConstructorUsedError;
}
