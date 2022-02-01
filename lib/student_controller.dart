import 'package:get/get.dart';
import 'package:getx_demo/student_model.dart';

class StudentController extends GetxController{
  Rx<Student> student = Student(name: "John", age: 20).obs;

  void convertToUpperCase(){
    student.update((student) {

      student!.name = student.name.toUpperCase();

    });

  }
}