import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:dio/dio.dart';
import 'package:flutter_app_state_mixin/models/CityModel.dart';
import 'package:uri/uri.dart';

class CityController extends GetxController with StateMixin<List<CityModel>> {
 var dio = Dio();

  CityController({required this.dio});

  @override
  void onInit() {
    findAllCities();
    super.onInit();
  }

  findAllCities() {
    const String url = 'https://servicodados.ibge.gov.br/api/v1/localidades/estados';

    dio.get(Uri.parse(url).toString()).then((result) {
      List<CityModel> data = CityModel.listFromJson(result.data);
      change(data, status: RxStatus.success());
    }, onError: (err) {
      change(null, status: RxStatus.error(err.toString()));
    });
  }
}