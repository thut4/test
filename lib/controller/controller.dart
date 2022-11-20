import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:coding_test/model/model.dart';

class Controller extends GetxController {
  var list = <List>[].obs;
  @override
  void onInit() {
    super.onInit();
    fetchList();
  }

  void fetchList() async {
    await Future.delayed(Duration(seconds: 1));
    var results = [
      List(
        name: "Flutter Developer",
        type: "Full time",
        date: "4 days ago",
        count: 3,
        logo: 'asset/flutter.png',
      ),
      List(
        name: "Laravel Developer",
        type: "Full time",
        date: "4 days ago",
        count: 3,
        logo: 'asset/laravel.png',
      ),
      List(
        name: "NodeJs Developer",
        type: "Full time",
        date: "4 days ago",
        count: 3,
        logo: 'asset/node-js.png',
      ),
      List(
        name: "React Developer",
        type: "Full time",
        date: "4 days ago",
        count: 3,
        logo: 'asset/react.png',
      )
    ];
    list.value = results;
  }
}
