import 'package:ecommerce/Statemanagent/counter_app_view_model.dart';
import 'package:ecommerce/Statemanagent/test_a.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CounterApp extends StatelessWidget {
  CounterApp({super.key});
  final CounterAppViewModel counterVM = CounterAppViewModel();

  // final CounterAppViewModel counterVM = Get.put(CounterAppViewModel());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        counterVM.onIncrement();

        // Get.to(TestA());

        // Get.off(TestA());
        // Get.offAll(TestA());
      }),
      appBar: AppBar(
        title: Text("Counter App"),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: [
              TextButton(
                  onPressed: () {
                    Get.to(TestA());
                  },
                  child: Text(
                    "Next",
                  )),
              Obx(
                () => Text("Value = ${counterVM.counter.value} "),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
