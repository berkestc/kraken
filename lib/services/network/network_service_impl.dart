import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../constants/failure_messages.dart';
import '../../core/models/failure/failure.dart';
import 'network_info.dart';
import 'network_service.dart';

@LazySingleton(as: NetworkService)
class NetworkServiceImpl implements NetworkService {
  final NetworkInfo networkInfo;
  final Dio _dio;

  const NetworkServiceImpl(
    this._dio, {
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, Response<Map<String, dynamic>>>> get(
    String url, {
    Map<String, dynamic>? queryParameters,
  }) async =>
      _tryCatch(() => _dio.get(url, queryParameters: queryParameters));

  @override
  Future<Either<Failure, Response<Map<String, dynamic>>>> post(
    String url, {
    dynamic data,
    Map<String, dynamic>? optionalHeaders,
    Map<String, dynamic>? queryParameters,
  }) {
    return _tryCatch(
      () async => _dio.post(
        url,
        data: data,
        queryParameters: queryParameters,
        options: Options(
          headers: Map.of(_dio.options.headers)..addAll(optionalHeaders ?? {}),
        ),
      ),
    );
  }

  @override
  Future<Either<Failure, Response<Map<String, dynamic>>>> put(
    String url, {
    dynamic data,
  }) =>
      _tryCatch(() => _dio.put(url, data: data));

  @override
  Future<Either<Failure, Response<Map<String, dynamic>>>> delete(
    String url, {
    dynamic data,
  }) =>
      _tryCatch(() => _dio.delete(url, data: data));

  Future<Either<Failure, Response<T>>> _tryCatch<T>(
    AsyncValueGetter<Response<T>> operation,
  ) async {
    try {
      if (await networkInfo.isConnected) {
        return right(await operation());
      } else {
        return left(const Failure.noConnection(noConnectionMessage));
      }
    } on DioException catch (e) {
      if (e.type == DioExceptionType.connectionTimeout) {
        return left(const Failure.connectionTimedOut(connectionTimedOutMessage));
      } else {
        return left(const Failure.unknownError(unknownErrorMessage));
      }
    } on TimeoutException {
      return left(const Failure.connectionTimedOut(connectionTimedOutMessage));
    } catch (e) {
      return left(const Failure.unknownError(unknownErrorMessage));
    }
  }
}
