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
                
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                onChanged: (val){
                  myController.countIncrement();
                },
              ),
            ),

            ElevatedButton(
                onPressed: (){
                  myController.countIncrement();
                },
                child: const Text("Add")
            )
          ],
        ),
      ),
    );
  }
}
