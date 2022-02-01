import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/my_controller.dart';


class HomeScreen extends StatelessWidget {

  MyController controller = Get.put(MyController());

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

            Text("m".tr,style: const TextStyle(fontSize: 30),),


            ElevatedButton(
                onPressed: (){
                  controller.changeLanguage("en","US");
                },
                child: const Text("ENGLISH")
            ),
            ElevatedButton(
                onPressed: (){
                  controller.changeLanguage("si","LK");
                },
                child: const Text("SINHALA")
            ),
            ElevatedButton(
                onPressed: (){
                  controller.changeLanguage("ta","LK");
                },
                child: const Text("TAMIL")
            )
          ],
        ),
      ),
    );
  }
}
