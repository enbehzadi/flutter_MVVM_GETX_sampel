import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:dio/dio.dart';
import 'bindings/CityBinding.dart';
import 'package:flutter_app_state_mixin/views/CityPage.dart';
import 'package:flutter_app_state_mixin/views/HomePage.dart';
import 'package:flutter_app_state_mixin/routes/app_pages.dart';
import 'package:flutter_app_state_mixin/routes/app_pages.dart';
import 'package:flutter_app_state_mixin/sharedloger/logger_utils.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      enableLog: true,
      initialRoute: AppPages.INITIAL,
      logWriterCallback: Logger.write,
      getPages: AppPages.routes,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}