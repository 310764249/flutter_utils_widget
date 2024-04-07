
import 'utils_widgets_platform_interface.dart';

class UtilsWidgets {
  Future<String?> getPlatformVersion() {
    return UtilsWidgetsPlatform.instance.getPlatformVersion();
  }
}
