#include "include/web3auth_flutter/web3auth_flutter_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "web3auth_flutter_plugin.h"

void Web3authFlutterPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  web3auth_flutter::Web3authFlutterPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
