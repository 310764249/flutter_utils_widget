import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'utils_widgets_method_channel.dart';

abstract class UtilsWidgetsPlatform extends PlatformInterface {
  /// Constructs a UtilsWidgetsPlatform.
  UtilsWidgetsPlatform() : super(token: _token);

  static final Object _token = Object();

  static UtilsWidgetsPlatform _instance = MethodChannelUtilsWidgets();

  /// The default instance of [UtilsWidgetsPlatform] to use.
  ///
  /// Defaults to [MethodChannelUtilsWidgets].
  static UtilsWidgetsPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [UtilsWidgetsPlatform] when
  /// they register themselves.
  static set instance(UtilsWidgetsPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
