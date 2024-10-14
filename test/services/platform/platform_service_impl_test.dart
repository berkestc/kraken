// ignore_for_file: avoid_dynamic_calls

import "package:flutter/services.dart";
import "package:flutter_test/flutter_test.dart";
import "package:kraken/constants/method_channel_constants.dart";
import "package:kraken/services/platform/platform_service_impl.dart";

void main() {
  late PlatformServiceImpl platformService;
  const channel = MethodChannel(MethodChannelConstants.methodChannelName);

  setUp(() {
    TestWidgetsFlutterBinding.ensureInitialized();
    platformService = PlatformServiceImpl();
  });

  group("PlatformServiceImpl", () {
    const int testPage = 1;

    test("should call invokeMethod with correct method and arguments", () async {
      bool methodCalled = false;
      TestDefaultBinaryMessengerBinding.instance?.defaultBinaryMessenger.setMockMethodCallHandler(channel,
          (MethodCall methodCall) async {
        if (methodCall.method == MethodChannelConstants.fetchAnimeList && methodCall.arguments["page"] == testPage) {
          methodCalled = true;
          return null;
        }
        return null;
      });

      await platformService.sendFetchAnimeListRequest();

      expect(methodCalled, isTrue);
    });

    test("should handle PlatformException during invokeMethod", () async {
      TestDefaultBinaryMessengerBinding.instance?.defaultBinaryMessenger.setMockMethodCallHandler(channel,
          (MethodCall methodCall) async {
        if (methodCall.method == MethodChannelConstants.fetchAnimeList) {
          throw PlatformException(code: "ERROR", message: "Error occurred");
        }
        return null;
      });

      await platformService.sendFetchAnimeListRequest();
    });

    test("should trigger callback on method call from platform side", () async {
      bool callbackTriggered = false;
      const int triggerPage = 2;

      platformService.initialize((page) {
        if (page == triggerPage) {
          callbackTriggered = true;
        }
      });

      TestDefaultBinaryMessengerBinding.instance?.defaultBinaryMessenger.handlePlatformMessage(
        channel.name,
        channel.codec.encodeMethodCall(
          const MethodCall(
            MethodChannelConstants.triggerFetchAnimeList,
            triggerPage,
          ),
        ),
        (ByteData? data) {},
      );

      expect(callbackTriggered, isTrue);
    });
  });
}
