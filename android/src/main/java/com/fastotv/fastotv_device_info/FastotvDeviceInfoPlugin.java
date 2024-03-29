package com.fastotv.fastotv_device_info;

import android.app.Activity;
import android.content.pm.PackageManager;

import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.MethodChannel.MethodCallHandler;
import io.flutter.plugin.common.MethodChannel.Result;
import io.flutter.plugin.common.PluginRegistry.Registrar;

/** DeviceInfoPlugin */
public class FastotvDeviceInfoPlugin implements MethodCallHandler {
  /** Plugin registration. */

  Activity context;
  MethodChannel methodChannel;

  public static void registerWith(Registrar registrar) {
    final MethodChannel channel = new MethodChannel(registrar.messenger(), "fastotv_device_info");
    channel.setMethodCallHandler(new FastotvDeviceInfoPlugin(registrar.activity(), channel));
  }

  public FastotvDeviceInfoPlugin(Activity activity, MethodChannel methodChannel) {
    this.context = activity;
    this.methodChannel = methodChannel;
    this.methodChannel.setMethodCallHandler(this);
  }
  @Override
  public void onMethodCall(MethodCall call, Result result) {

    PackageManager pm = context.getPackageManager();
    switch (call.method) {
    case "touchscreen":
      result.success(pm.hasSystemFeature(PackageManager.FEATURE_TOUCHSCREEN));
      break;
    case "faketouch":
      result.success(pm.hasSystemFeature("android.hardware.faketouch"));
      break;
    case "leanback":
      result.success(pm.hasSystemFeature("android.software.leanback"));
      break;

    default:
      result.notImplemented();
      break;
    }
  }
}
