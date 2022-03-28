import 'package:flutter_app_state_mixin/views/HomePage.dart';
import 'package:flutter_app_state_mixin/views/CityPage.dart';
import 'package:get/get.dart';
import 'app_routes.dart';
import 'package:flutter_app_state_mixin/bindings/CityBinding.dart';
class AppPages {
  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: Routes.HOME,
      page: () => HomePage(),
      binding: CityBinding(),
      children: [
        GetPage(
          name: Routes.CITIES,
          page: () => CityPage(),

        ),
      ],
    ),
  ];
}
