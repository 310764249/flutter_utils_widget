import 'package:flutter_test/flutter_test.dart';
import 'package:utils_widgets/utils_widgets.dart';
import 'package:utils_widgets/utils_widgets_platform_interface.dart';
import 'package:utils_widgets/utils_widgets_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockUtilsWidgetsPlatform
    with MockPlatformInterfaceMixin
    implements UtilsWidgetsPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final UtilsWidgetsPlatform initialPlatform = UtilsWidgetsPlatform.instance;

  test('$MethodChannelUtilsWidgets is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelUtilsWidgets>());
  });

  test('getPlatformVersion', () async {
    UtilsWidgets utilsWidgetsPlugin = UtilsWidgets();
    MockUtilsWidgetsPlatform fakePlatform = MockUtilsWidgetsPlatform();
    UtilsWidgetsPlatform.instance = fakePlatform;

    expect(await utilsWidgetsPlugin.getPlatformVersion(), '42');
  });
}
