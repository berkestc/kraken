import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';

@freezed
class Failure with _$Failure {
  const factory Failure.unknownError(String message) = _UnknownError;
  const factory Failure.noConnection(String message) = _NoConnection;
  const factory Failure.connectionTimedOut(String message) = _ConnectionTimedOut;
  const factory Failure.responseError(String message) = _ResponseError;
}
