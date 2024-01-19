import Flutter
import UIKit
import Web3Auth

public class Web3authFlutterPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "web3auth_flutter", binaryMessenger: registrar.messenger())
    let instance = Web3authFlutterPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  var web3auth: Web3Auth?
  public var state: Web3AuthState? {
      return web3auth?.state
  }
  var decoder = JSONDecoder()
  var encoder = JSONEncoder()

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    switch call.method {
    case "getPlatformVersion":
      result("iOS " + UIDevice.current.systemVersion)
    default:
      result(FlutterMethodNotImplemented)
    }
  }
}
