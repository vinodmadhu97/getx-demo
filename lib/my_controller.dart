import 'dart:async';

import 'package:get/get.dart';

class MyController extends GetxController{

  int count = 0;


  void countIncrement() async {

    await Future.delayed( Duration(seconds: 5));
    count++;
    update();

  }

  void cleanupTask(){

    print("Task cleaned");

  }

  //Best Approach

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    print("my controller initialized");
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
    print("my controller closed");
  }


}