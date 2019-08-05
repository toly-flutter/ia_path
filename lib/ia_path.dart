import 'dart:async';
import 'dart:io';

import 'package:flutter/services.dart';

class IaPath {
  static const MethodChannel _channel =//插件的渠道标识名
      const MethodChannel('com.toly1994.ia_path');

  Future<Directory> getTemporaryDirectory() async {
    final String path =
    await _channel.invokeMethod<String>('getTemporaryDirectory');
    if (path == null) {
      return null;
    }
    return Directory(path);
  }
}


