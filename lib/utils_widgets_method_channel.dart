import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'utils_widgets_platform_interface.dart';

/// An implementation of [UtilsWidgetsPlatform] that uses method channels.
class MethodChannelUtilsWidgets extends UtilsWidgetsPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('utils_widgets');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
