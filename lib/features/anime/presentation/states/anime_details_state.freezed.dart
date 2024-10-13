// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'anime_details_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AnimeDetailsState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<Character> get characters => throw _privateConstructorUsedError;
  Option<Failure> get failure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AnimeDetailsStateCopyWith<AnimeDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnimeDetailsStateCopyWith<$Res> {
  factory $AnimeDetailsStateCopyWith(
          AnimeDetailsState value, $Res Function(AnimeDetailsState) then) =
      _$AnimeDetailsStateCopyWithImpl<$Res, AnimeDetailsState>;
  @useResult
  $Res call(
      {bool isLoading, List<Character> characters, Option<Failure> failure});
}

/// @nodoc
class _$AnimeDetailsStateCopyWithImpl<$Res, $Val extends AnimeDetailsState>
    implements $AnimeDetailsStateCopyWith<$Res> {
  _$AnimeDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? characters = null,
    Object? failure = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      characters: null == characters
          ? _value.characters
          : characters // ignore: cast_nullable_to_non_nullable
              as List<Character>,
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Option<Failure>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AnimeDetailsStateCopyWith<$Res>
    implements $AnimeDetailsStateCopyWith<$Res> {
  factory _$$_AnimeDetailsStateCopyWith(_$_AnimeDetailsState value,
          $Res Function(_$_AnimeDetailsState) then) =
      __$$_AnimeDetailsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading, List<Character> characters, Option<Failure> failure});
}

/// @nodoc
class __$$_AnimeDetailsStateCopyWithImpl<$Res>
    extends _$AnimeDetailsStateCopyWithImpl<$Res, _$_AnimeDetailsState>
    implements _$$_AnimeDetailsStateCopyWith<$Res> {
  __$$_AnimeDetailsStateCopyWithImpl(
      _$_AnimeDetailsState _value, $Res Function(_$_AnimeDetailsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? characters = null,
    Object? failure = null,
  }) {
    return _then(_$_AnimeDetailsState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      characters: null == characters
          ? _value._characters
          : characters // ignore: cast_nullable_to_non_nullable
              as List<Character>,
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Option<Failure>,
    ));
  }
}

/// @nodoc

class _$_AnimeDetailsState implements _AnimeDetailsState {
  const _$_AnimeDetailsState(
      {required this.isLoading,
      required final List<Character> characters,
      required this.failure})
      : _characters = characters;

  @override
  final bool isLoading;
  final List<Character> _characters;
  @override
  List<Character> get characters {
    if (_characters is EqualUnmodifiableListView) return _characters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_characters);
  }

  @override
  final Option<Failure> failure;

  @override
  String toString() {
    return 'AnimeDetailsState(isLoading: $isLoading, characters: $characters, failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AnimeDetailsState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality()
                .equals(other._characters, _characters) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading,
      const DeepCollectionEquality().hash(_characters), failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AnimeDetailsStateCopyWith<_$_AnimeDetailsState> get copyWith =>
      __$$_AnimeDetailsStateCopyWithImpl<_$_AnimeDetailsState>(
          this, _$identity);
}

abstract class _AnimeDetailsState implements AnimeDetailsState {
  const factory _AnimeDetailsState(
      {required final bool isLoading,
      required final List<Character> characters,
      required final Option<Failure> failure}) = _$_AnimeDetailsState;

  @override
  bool get isLoading;
  @override
  List<Character> get characters;
  @override
  Option<Failure> get failure;
  @override
  @JsonKey(ignore: true)
  _$$_AnimeDetailsStateCopyWith<_$_AnimeDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}
