import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:dio/dio.dart';
import 'package:flutter_app_state_mixin/modelViews/CityController.dart';
class CityPage extends GetView<CityController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Cities')),
      body: Container(
        child: controller.obx(
              (state) => ListView.builder(
            itemCount: state.length,
            itemBuilder: (context, index) {
              return Text(state[index].name.toString());
            },
          ),
          onLoading: Center(child: CircularProgressIndicator()), // optional
          onError: (error) => Center(                            // optional
            child: Text('Error: $error',
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}