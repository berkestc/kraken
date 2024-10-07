import 'package:cross_connectivity/cross_connectivity.dart';
import 'package:injectable/injectable.dart';

import '../../router/router.dart';

@module
abstract class RegisterModule {
  @lazySingleton
  AppRouter get appRouter;

  @lazySingleton
  Connectivity get connectivity;
}
