import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:dio/dio.dart';
import 'package:flutter_app_state_mixin/modelViews/CityController.dart';
class CityBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(Dio());
    Get.put(CityController(  dio: Get.find()));
  }
}