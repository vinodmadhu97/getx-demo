import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  RxInt number = 0.obs;


  void incrementCount(){
    number++;
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
              Obx(()=> Text("Count is $number",style: const TextStyle(fontSize: 30),),
              ),

            ElevatedButton(
                onPressed: (){
                  incrementCount();
                },
                child: const Text("Add")
            )
          ],
        ),
      ),
    );
  }
}
