import 'dart:async';

import 'package:get/get.dart';

class MyController extends GetxController{

  int count = 0;


  void countIncrement()  {

    count++;
    update();

  }


}