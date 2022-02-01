import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/student_controller.dart';
import 'package:getx_demo/student_model.dart';

class HomeScreen extends StatelessWidget {
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
            GetX<StudentController>(
                init: StudentController(),
                builder: (controller){
                return Text("Age ${controller.student.value.age} ",style: const TextStyle(fontSize: 30),);
            }),

            ElevatedButton(
                onPressed: (){

                  //if instance of StudentController not created at top
                  Get.find<StudentController>().ageIncrement();

                },
                child: const Text("Add")
            )
          ],
        ),
      ),
    );
  }
}
