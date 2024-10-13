import UIKit
import Flutter

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
    
    override func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
    ) -> Bool {
        let controller: FlutterViewController = window?.rootViewController as! FlutterViewController
        let methodChannel = FlutterMethodChannel(name: MethodChannelConstants.METHOD_CHANNEL_NAME, binaryMessenger: controller.binaryMessenger)
        
        methodChannel.setMethodCallHandler { (call: FlutterMethodCall, result: @escaping FlutterResult) in
            if call.method == MethodChannelConstants.FETCH_ANIME_LIST {
                let page = (call.arguments as? [String: Any])?["page"] as? Int ?? 1
                self.triggerFetchAnimeList(page: page, result: result)
            } else {
                result(FlutterMethodNotImplemented)
            }
        }
        
        GeneratedPluginRegistrant.register(with: self)
        return super.application(application, didFinishLaunchingWithOptions: launchOptions)
    }
    
  private func triggerFetchAnimeList(page: Int, result: FlutterResult) {
    if let controller = window?.rootViewController as? FlutterViewController {
        let methodChannel = FlutterMethodChannel(name: MethodChannelConstants.METHOD_CHANNEL_NAME, binaryMessenger: controller.binaryMessenger)
        
        methodChannel.invokeMethod(MethodChannelConstants.TRIGGER_FETCH_ANIME_LIST, arguments: page)
        
        result(nil)
    } else {
        result(FlutterError(code: "UNAVAILABLE", message: "Root view controller is not available", details: nil))
    }
}

}
