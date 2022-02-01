import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/student_model.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  Rx<Student> student = Student(name: "Tom",age: 20).obs;


  void toUpper(){
    student.update((student) {
      student!.name = student.name.toUpperCase();
    });
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
              Obx(()=> Text("Name is ${student.value.name}",style: const TextStyle(fontSize: 30),),
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
