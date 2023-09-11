import 'package:ecommerce/Statemanagent/counter_app_view_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TestB extends StatelessWidget {
  TestB({super.key});
  // final CounterAppViewModel counterVM = CounterAppViewModel();

  final CounterAppViewModel counterVM = Get.put(CounterAppViewModel());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        counterVM.onIncrement();
        // Get.back();
        Navigator.pop(context);
      }),
      appBar: AppBar(
        title: Text("Counter B"),
      ),
      body: Container(
        child: Center(
          child: Obx(
            () => Text("Value = ${counterVM.counter.value} "),
          ),
        ),
      ),
    );
  }
}
