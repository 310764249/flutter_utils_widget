#include "include/utils_widgets/utils_widgets_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "utils_widgets_plugin.h"

void UtilsWidgetsPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  utils_widgets::UtilsWidgetsPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
