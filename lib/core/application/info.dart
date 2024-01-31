import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:package_info_plus/package_info_plus.dart';


///パッケージ情報を保持するプロバイダー
final packageInfoProvider = Provider<PackageInfo>((ref) {
  return throw UnimplementedError();
});

///デバイス情報を保持するプロバイダー
final deviceInfoProvider = Provider<DeviceInfoData>((ref) {
  return throw UnimplementedError();
});

final appInfoProvider = Provider((ref) {
  final packageInfo = ref.watch(packageInfoProvider);
  final deviceInfo = ref.watch(deviceInfoProvider);
  // final localClient = ref.watch(localClientProvider);
  return AppInfo(
      packageInfo: packageInfo,
      deviceInfo: deviceInfo,
      // localClient: localClient
  );
});

class AppInfo {
  AppInfo(
      {required this.packageInfo,
      required this.deviceInfo,
      // required this.localClient
      });

  final PackageInfo packageInfo;
  final DeviceInfoData deviceInfo;
  // final LocalClient localClient;

  ///起動時にアプリ情報取得
  void init() {
    getAppInfo();
  }

  Future<void> getAppInfo() async {
    debugPrint('======デバイス情報======');
    debugPrint('appName:${packageInfo.appName}');
    debugPrint('packageName:${packageInfo.packageName}');
    debugPrint('version:${packageInfo.version}');
    debugPrint('buildNumber:${packageInfo.buildNumber}');

    String os = '';
    String deviceId = '';
    if (Platform.isAndroid) {
      debugPrint('deviceOS: Android');
      debugPrint('deviceId:${deviceInfo.androidInfo?.id ?? 'null'}');
      os = 'Android';
      deviceId = deviceInfo.androidInfo?.id ?? '';
    } else if (Platform.isIOS) {
      debugPrint('deviceOS: IOS');
      debugPrint(
          'deviceId:${deviceInfo.iosInfo?.identifierForVendor ?? 'null'}');
      os = 'IOS';
      deviceId = deviceInfo.iosInfo?.identifierForVendor ?? '';
    }
    debugPrint('=====================');
    final arg = DeviceInfoSetArg(
        appName: packageInfo.appName,
        packageName: packageInfo.packageName,
        version: packageInfo.version,
        buildNumber: packageInfo.buildNumber,
        deviceId: deviceId,
        os: os);
    // await localClient.setDeviceInfo(arg);
  }
}

@immutable
class DeviceInfoData {
  const DeviceInfoData({required this.androidInfo, required this.iosInfo});

  final AndroidDeviceInfo? androidInfo;
  final IosDeviceInfo? iosInfo;
}

@immutable
class DeviceInfoSetArg {
  const DeviceInfoSetArg(
      {required this.appName,
      required this.packageName,
      required this.version,
      required this.buildNumber,
        required this.deviceId,
      required this.os});

  final String appName;
  final String packageName;
  final String version;
  final String buildNumber;
  final String deviceId;
  final String os;
}
