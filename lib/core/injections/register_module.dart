import 'package:cross_connectivity/cross_connectivity.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../constants/durations.dart';
import '../../constants/endpoints.dart';
import '../../router/router.dart';

@module
abstract class RegisterModule {
  @lazySingleton
  AppRouter get appRouter;

  @lazySingleton
  Connectivity get connectivity;

  @lazySingleton
  Dio get dio => Dio(
        BaseOptions(
          connectTimeout: timeoutDuration,
          receiveTimeout: timeoutDuration,
          sendTimeout: timeoutDuration,
          baseUrl: Endpoints.baseUrl,
          headers: {'Content-Type': 'application/json; charset=UTF-8'},
        ),
      );
}
