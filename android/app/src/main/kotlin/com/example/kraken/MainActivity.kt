package com.example.kraken

import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel

class MainActivity: FlutterActivity() {
    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)

        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, MethodChannelConstants.METHOD_CHANNEL_NAME).setMethodCallHandler { call, result ->
            if (call.method == MethodChannelConstants.FETCH_ANIME_LIST) {
                val page = call.argument<Int>("page") ?: 1
                triggerFetchAnimeList(page)
                result.success(null)
            } else {
                result.notImplemented()
            }
        }
    }

    private fun triggerFetchAnimeList(page: Int) {
        flutterEngine?.dartExecutor?.binaryMessenger?.let { messenger ->
            MethodChannel(messenger, MethodChannelConstants.METHOD_CHANNEL_NAME).invokeMethod(MethodChannelConstants.TRIGGER_FETCH_ANIME_LIST, page)
        }
    }
}
