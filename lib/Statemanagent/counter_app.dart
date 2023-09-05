import 'package:ecommerce/Statemanagent/counter_app_view_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CounterApp extends StatelessWidget {
   CounterApp({super.key});

final CounterAppViewModel counterVM=Get.put(CounterAppViewModel());


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed:(){
      counterVM.onIncrement();

      }),
appBar: AppBar(title: Text("Counter App"),

),
body: Container(child: Center(child:
Obx(() =>
 Text("Value = ${counterVM.counter.value} "),
),
 
 
 ),),
    );
  }
}