package com.toly1994.ia_path

import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.MethodChannel.Result
import io.flutter.plugin.common.PluginRegistry.Registrar

class IaPathPlugin(registrar: Registrar) : MethodCallHandler {
  private var mRegistrar: Registrar? = registrar

  companion object {
    @JvmStatic
    fun registerWith(registrar: Registrar) {
      val channel = MethodChannel(registrar.messenger(), "com.toly1994.ia_path")
      val instance = IaPathPlugin(registrar)
      channel.setMethodCallHandler(instance)
    }
  }

  override fun onMethodCall(call: MethodCall, result: Result) {
    when(call.method){
      "getTemporaryDirectory"->{
        result.success(geTemporaryDirectory())
      }
    }
  }

  private fun geTemporaryDirectory(): String {
   return mRegistrar!!.context().cacheDir.path;
  }
}
