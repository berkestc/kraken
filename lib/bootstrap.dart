import 'dart:async';
import 'dart:developer';
import 'dart:ui';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'constants/system_ui_overlay_styles.dart';
import 'core/injections/locator.dart';

import 'firebase_options.dart';

Future<void> bootstrap(FutureOr<Widget> Function() builder) async {
  FlutterError.onError = (details) {
    log(details.exceptionAsString(), stackTrace: details.stack);
    FirebaseCrashlytics.instance.recordFlutterFatalError(details);
  };

  PlatformDispatcher.instance.onError = (error, stack) {
    FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
    return true;
  };

  await runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();

      await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

      SystemChrome.setSystemUIOverlayStyle(systemUiOverlayDarkStyle);
      SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
      configureDependencies();

      runApp(await builder());
    },
    (error, stackTrace) async {
      log(error.toString(), stackTrace: stackTrace);
      FirebaseCrashlytics.instance.recordError(error, stackTrace);
    },
  );
}
