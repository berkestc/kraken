import 'dart:async';
import 'dart:developer';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:kraken/constants/system_ui_overlay_styles.dart';
import 'package:kraken/core/injections/locator.dart';

Future<void> bootstrap(FutureOr<Widget> Function() builder) async {
  await runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      await EasyLocalization.ensureInitialized();

      SystemChrome.setSystemUIOverlayStyle(systemUiOverlayDarkStyle);
      SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown],
      );
      configureDependencies();

      runApp(await builder());
    },
    (error, stackTrace) async => log(error.toString(), stackTrace: stackTrace),
  );
}
