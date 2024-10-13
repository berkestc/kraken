import 'dart:developer';

import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';

import '../../constants/method_channel_constants.dart';
import 'platform_service.dart';

@LazySingleton(as: PlatformService)
class PlatformServiceImpl implements PlatformService {
  static const MethodChannel _channel = MethodChannel(MethodChannelConstants.methodChannelName);

  @override
  Future<void> sendFetchAnimeListRequest({int page = 1}) async {
    try {
      await _channel.invokeMethod(MethodChannelConstants.fetchAnimeList, {"page": page});
    } on PlatformException catch (e) {
      log("Error: ${e.message}");
    }
  }

  @override
  void initialize(ValueChanged<int> onTriggerFetchAnimeList) {
    _channel.setMethodCallHandler((call) async {
      if (call.method == MethodChannelConstants.triggerFetchAnimeList) {
        final page = call.arguments as int;

        onTriggerFetchAnimeList(page);
      }
    });
  }
}
