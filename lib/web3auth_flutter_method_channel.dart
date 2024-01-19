import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'web3auth_flutter_platform_interface.dart';

/// An implementation of [Web3authFlutterPlatform] that uses method channels.
class MethodChannelWeb3authFlutter extends Web3authFlutterPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('web3auth_flutter');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
