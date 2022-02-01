import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/student_controller.dart';
import 'package:getx_demo/student_model.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  StudentController studentController = Get.put(StudentController());

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
              Obx(()=> Text("Name is ${studentController.student.value.name}",style: const TextStyle(fontSize: 30),),
              ),

            ElevatedButton(
                onPressed: (){
                  studentController.convertToUpperCase();
                },
                child: const Text("Add")
            )
          ],
        ),
      ),
    );
  }
}
