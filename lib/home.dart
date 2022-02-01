import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/my_controller.dart';


class HomeScreen extends StatelessWidget {
  MyController myController = Get.put(MyController());
  HomeScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: const Text("Home"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
             /* Obx(()=> Text("Age ${studentController.student.value.age}",style: const TextStyle(fontSize: 30),),
              ),*/
                
            GetBuilder<MyController>(
                init: MyController(),
                builder: (controller){
                  return Text("Count ${controller.count} ",style: const TextStyle(fontSize: 30),);
                }
                ),



            ElevatedButton(
                onPressed: (){
                  Get.find<MyController>().countIncrement();
                },
                child: const Text("Add")
            )
          ],
        ),
      ),
    );
  }
}
