// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Failure {
  String get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) unknownError,
    required TResult Function(String message) noConnection,
    required TResult Function(String message) connectionTimedOut,
    required TResult Function(String message) responseError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? unknownError,
    TResult? Function(String message)? noConnection,
    TResult? Function(String message)? connectionTimedOut,
    TResult? Function(String message)? responseError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? unknownError,
    TResult Function(String message)? noConnection,
    TResult Function(String message)? connectionTimedOut,
    TResult Function(String message)? responseError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnknownError value) unknownError,
    required TResult Function(_NoConnection value) noConnection,
    required TResult Function(_ConnectionTimedOut value) connectionTimedOut,
    required TResult Function(_ResponseError value) responseError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UnknownError value)? unknownError,
    TResult? Function(_NoConnection value)? noConnection,
    TResult? Function(_ConnectionTimedOut value)? connectionTimedOut,
    TResult? Function(_ResponseError value)? responseError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnknownError value)? unknownError,
    TResult Function(_NoConnection value)? noConnection,
    TResult Function(_ConnectionTimedOut value)? connectionTimedOut,
    TResult Function(_ResponseError value)? responseError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FailureCopyWith<Failure> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) then) =
      _$FailureCopyWithImpl<$Res, Failure>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$FailureCopyWithImpl<$Res, $Val extends Failure>
    implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UnknownErrorCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$_UnknownErrorCopyWith(
          _$_UnknownError value, $Res Function(_$_UnknownError) then) =
      __$$_UnknownErrorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_UnknownErrorCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$_UnknownError>
    implements _$$_UnknownErrorCopyWith<$Res> {
  __$$_UnknownErrorCopyWithImpl(
      _$_UnknownError _value, $Res Function(_$_UnknownError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_UnknownError(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UnknownError implements _UnknownError {
  const _$_UnknownError(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'Failure.unknownError(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UnknownError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UnknownErrorCopyWith<_$_UnknownError> get copyWith =>
      __$$_UnknownErrorCopyWithImpl<_$_UnknownError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) unknownError,
    required TResult Function(String message) noConnection,
    required TResult Function(String message) connectionTimedOut,
    required TResult Function(String message) responseError,
  }) {
    return unknownError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? unknownError,
    TResult? Function(String message)? noConnection,
    TResult? Function(String message)? connectionTimedOut,
    TResult? Function(String message)? responseError,
  }) {
    return unknownError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? unknownError,
    TResult Function(String message)? noConnection,
    TResult Function(String message)? connectionTimedOut,
    TResult Function(String message)? responseError,
    required TResult orElse(),
  }) {
    if (unknownError != null) {
      return unknownError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnknownError value) unknownError,
    required TResult Function(_NoConnection value) noConnection,
    required TResult Function(_ConnectionTimedOut value) connectionTimedOut,
    required TResult Function(_ResponseError value) responseError,
  }) {
    return unknownError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UnknownError value)? unknownError,
    TResult? Function(_NoConnection value)? noConnection,
    TResult? Function(_ConnectionTimedOut value)? connectionTimedOut,
    TResult? Function(_ResponseError value)? responseError,
  }) {
    return unknownError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnknownError value)? unknownError,
    TResult Function(_NoConnection value)? noConnection,
    TResult Function(_ConnectionTimedOut value)? connectionTimedOut,
    TResult Function(_ResponseError value)? responseError,
    required TResult orElse(),
  }) {
    if (unknownError != null) {
      return unknownError(this);
    }
    return orElse();
  }
}

abstract class _UnknownError implements Failure {
  const factory _UnknownError(final String message) = _$_UnknownError;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_UnknownErrorCopyWith<_$_UnknownError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_NoConnectionCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$_NoConnectionCopyWith(
          _$_NoConnection value, $Res Function(_$_NoConnection) then) =
      __$$_NoConnectionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_NoConnectionCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$_NoConnection>
    implements _$$_NoConnectionCopyWith<$Res> {
  __$$_NoConnectionCopyWithImpl(
      _$_NoConnection _value, $Res Function(_$_NoConnection) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_NoConnection(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_NoConnection implements _NoConnection {
  const _$_NoConnection(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'Failure.noConnection(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NoConnection &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NoConnectionCopyWith<_$_NoConnection> get copyWith =>
      __$$_NoConnectionCopyWithImpl<_$_NoConnection>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) unknownError,
    required TResult Function(String message) noConnection,
    required TResult Function(String message) connectionTimedOut,
    required TResult Function(String message) responseError,
  }) {
    return noConnection(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? unknownError,
    TResult? Function(String message)? noConnection,
    TResult? Function(String message)? connectionTimedOut,
    TResult? Function(String message)? responseError,
  }) {
    return noConnection?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? unknownError,
    TResult Function(String message)? noConnection,
    TResult Function(String message)? connectionTimedOut,
    TResult Function(String message)? responseError,
    required TResult orElse(),
  }) {
    if (noConnection != null) {
      return noConnection(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnknownError value) unknownError,
    required TResult Function(_NoConnection value) noConnection,
    required TResult Function(_ConnectionTimedOut value) connectionTimedOut,
    required TResult Function(_ResponseError value) responseError,
  }) {
    return noConnection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UnknownError value)? unknownError,
    TResult? Function(_NoConnection value)? noConnection,
    TResult? Function(_ConnectionTimedOut value)? connectionTimedOut,
    TResult? Function(_ResponseError value)? responseError,
  }) {
    return noConnection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnknownError value)? unknownError,
    TResult Function(_NoConnection value)? noConnection,
    TResult Function(_ConnectionTimedOut value)? connectionTimedOut,
    TResult Function(_ResponseError value)? responseError,
    required TResult orElse(),
  }) {
    if (noConnection != null) {
      return noConnection(this);
    }
    return orElse();
  }
}

abstract class _NoConnection implements Failure {
  const factory _NoConnection(final String message) = _$_NoConnection;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_NoConnectionCopyWith<_$_NoConnection> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ConnectionTimedOutCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$_ConnectionTimedOutCopyWith(_$_ConnectionTimedOut value,
          $Res Function(_$_ConnectionTimedOut) then) =
      __$$_ConnectionTimedOutCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_ConnectionTimedOutCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$_ConnectionTimedOut>
    implements _$$_ConnectionTimedOutCopyWith<$Res> {
  __$$_ConnectionTimedOutCopyWithImpl(
      _$_ConnectionTimedOut _value, $Res Function(_$_ConnectionTimedOut) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_ConnectionTimedOut(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ConnectionTimedOut implements _ConnectionTimedOut {
  const _$_ConnectionTimedOut(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'Failure.connectionTimedOut(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ConnectionTimedOut &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ConnectionTimedOutCopyWith<_$_ConnectionTimedOut> get copyWith =>
      __$$_ConnectionTimedOutCopyWithImpl<_$_ConnectionTimedOut>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) unknownError,
    required TResult Function(String message) noConnection,
    required TResult Function(String message) connectionTimedOut,
    required TResult Function(String message) responseError,
  }) {
    return connectionTimedOut(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? unknownError,
    TResult? Function(String message)? noConnection,
    TResult? Function(String message)? connectionTimedOut,
    TResult? Function(String message)? responseError,
  }) {
    return connectionTimedOut?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? unknownError,
    TResult Function(String message)? noConnection,
    TResult Function(String message)? connectionTimedOut,
    TResult Function(String message)? responseError,
    required TResult orElse(),
  }) {
    if (connectionTimedOut != null) {
      return connectionTimedOut(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnknownError value) unknownError,
    required TResult Function(_NoConnection value) noConnection,
    required TResult Function(_ConnectionTimedOut value) connectionTimedOut,
    required TResult Function(_ResponseError value) responseError,
  }) {
    return connectionTimedOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UnknownError value)? unknownError,
    TResult? Function(_NoConnection value)? noConnection,
    TResult? Function(_ConnectionTimedOut value)? connectionTimedOut,
    TResult? Function(_ResponseError value)? responseError,
  }) {
    return connectionTimedOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnknownError value)? unknownError,
    TResult Function(_NoConnection value)? noConnection,
    TResult Function(_ConnectionTimedOut value)? connectionTimedOut,
    TResult Function(_ResponseError value)? responseError,
    required TResult orElse(),
  }) {
    if (connectionTimedOut != null) {
      return connectionTimedOut(this);
    }
    return orElse();
  }
}

abstract class _ConnectionTimedOut implements Failure {
  const factory _ConnectionTimedOut(final String message) =
      _$_ConnectionTimedOut;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_ConnectionTimedOutCopyWith<_$_ConnectionTimedOut> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ResponseErrorCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$_ResponseErrorCopyWith(
          _$_ResponseError value, $Res Function(_$_ResponseError) then) =
      __$$_ResponseErrorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_ResponseErrorCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$_ResponseError>
    implements _$$_ResponseErrorCopyWith<$Res> {
  __$$_ResponseErrorCopyWithImpl(
      _$_ResponseError _value, $Res Function(_$_ResponseError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_ResponseError(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ResponseError implements _ResponseError {
  const _$_ResponseError(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'Failure.responseError(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResponseError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ResponseErrorCopyWith<_$_ResponseError> get copyWith =>
      __$$_ResponseErrorCopyWithImpl<_$_ResponseError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) unknownError,
    required TResult Function(String message) noConnection,
    required TResult Function(String message) connectionTimedOut,
    required TResult Function(String message) responseError,
  }) {
    return responseError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? unknownError,
    TResult? Function(String message)? noConnection,
    TResult? Function(String message)? connectionTimedOut,
    TResult? Function(String message)? responseError,
  }) {
    return responseError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? unknownError,
    TResult Function(String message)? noConnection,
    TResult Function(String message)? connectionTimedOut,
    TResult Function(String message)? responseError,
    required TResult orElse(),
  }) {
    if (responseError != null) {
      return responseError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnknownError value) unknownError,
    required TResult Function(_NoConnection value) noConnection,
    required TResult Function(_ConnectionTimedOut value) connectionTimedOut,
    required TResult Function(_ResponseError value) responseError,
  }) {
    return responseError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UnknownError value)? unknownError,
    TResult? Function(_NoConnection value)? noConnection,
    TResult? Function(_ConnectionTimedOut value)? connectionTimedOut,
    TResult? Function(_ResponseError value)? responseError,
  }) {
    return responseError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnknownError value)? unknownError,
    TResult Function(_NoConnection value)? noConnection,
    TResult Function(_ConnectionTimedOut value)? connectionTimedOut,
    TResult Function(_ResponseError value)? responseError,
    required TResult orElse(),
  }) {
    if (responseError != null) {
      return responseError(this);
    }
    return orElse();
  }
}

abstract class _ResponseError implements Failure {
  const factory _ResponseError(final String message) = _$_ResponseError;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_ResponseErrorCopyWith<_$_ResponseError> get copyWith =>
      throw _privateConstructorUsedError;
}
