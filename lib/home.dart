import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/student_model.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  Student student = Student();


  void toUpper(){
    student.name.value = student.name.value.toUpperCase();
  }

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
              Obx(()=> Text("Name is ${student.name.value}",style: const TextStyle(fontSize: 30),),
              ),

            ElevatedButton(
                onPressed: (){
                  toUpper();
                },
                child: const Text("Add")
            )
          ],
        ),
      ),
    );
  }
}
