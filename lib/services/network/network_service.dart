import 'dart:async';

import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';

import '../../core/models/failure/failure.dart';

abstract class NetworkService {
  Future<Either<Failure, Response<Map<String, dynamic>>>> get(
    String url, {
    Map<String, dynamic>? queryParameters,
  });

  Future<Either<Failure, Response<Map<String, dynamic>>>> post(
    String url, {
    Map<String, dynamic>? optionalHeaders,
    Map<String, dynamic>? queryParameters,
    dynamic data,
  });

  Future<Either<Failure, Response<Map<String, dynamic>>>> put(
    String url, {
    dynamic data,
  });

  Future<Either<Failure, Response<Map<String, dynamic>>>> delete(
    String url, {
    dynamic data,
  });
}
