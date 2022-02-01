import 'dart:async';

import 'package:get/get.dart';

class MyController extends GetxController{

  Rx<int> count = 0.obs;


    void countIncrement() {

    count.value++;

  }

  void cleanupTask(){

    print("Task cleaned");

  }


  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();

    //called every time when the count value changing
    //ever(count,(_)=>print(count));

    //called every time when the value of list changing
    /*everAll(listeners, callback)*/

    //called only once when the count value changing
    //once(count, (_)=>print(count));

    //called after 5 seconds when value changed
    //+debounce(count, (_)=>print("debounce called"),time: Duration(seconds: 5));

    interval(count, (_)=>print("ignore changerd"),time: Duration(seconds: 3));
  }

}