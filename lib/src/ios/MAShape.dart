import 'dart:typed_data';

import 'package:amap_map_flutter/src/ios/ios.export.dart';
import 'package:amap_map_flutter/src/android/android.export.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class MAShape extends NSObject with MAAnnotation {
  static final _channel = MethodChannel('me.yohom/amap_map_flutter');

  // 生成getters
  Future<String> get_title() async {
    final result = await _channel.invokeMethod("MAShape::get_title", {'refId': refId});
    return result;
  }
  
  Future<String> get_subtitle() async {
    final result = await _channel.invokeMethod("MAShape::get_subtitle", {'refId': refId});
    return result;
  }
  

  // 生成setters
  Future<void> set_title(String title) async {
    await _channel.invokeMethod('MAShape::set_title', {'refId': refId, "title": title});
  
  
  }
  
  Future<void> set_subtitle(String subtitle) async {
    await _channel.invokeMethod('MAShape::set_subtitle', {'refId': refId, "subtitle": subtitle});
  
  
  }
  

  // 生成方法们
  
}