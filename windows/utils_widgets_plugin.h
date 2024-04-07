#ifndef FLUTTER_PLUGIN_UTILS_WIDGETS_PLUGIN_H_
#define FLUTTER_PLUGIN_UTILS_WIDGETS_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace utils_widgets {

class UtilsWidgetsPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  UtilsWidgetsPlugin();

  virtual ~UtilsWidgetsPlugin();

  // Disallow copy and assign.
  UtilsWidgetsPlugin(const UtilsWidgetsPlugin&) = delete;
  UtilsWidgetsPlugin& operator=(const UtilsWidgetsPlugin&) = delete;

  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace utils_widgets

#endif  // FLUTTER_PLUGIN_UTILS_WIDGETS_PLUGIN_H_
