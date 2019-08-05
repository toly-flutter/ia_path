import Flutter
import UIKit

public class SwiftIaPathPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "com.toly1994.ia_path", binaryMessenger: registrar.messenger())
    let instance = SwiftIaPathPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    switch call.method {
       case "getTemporaryDirectory"  :
          result(NSTemporaryDirectory())
       default :
          result("UnKnown")
    }
  }
}
