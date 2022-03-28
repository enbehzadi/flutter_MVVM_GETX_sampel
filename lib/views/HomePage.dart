import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:dio/dio.dart';
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('HOME')),
      body: Center(
        child: RaisedButton(
          onPressed: () =>
              Get.toNamed('/home/cities'),

            child: Text('Go to Cities'),
        ),
      ),
    );
  }
}