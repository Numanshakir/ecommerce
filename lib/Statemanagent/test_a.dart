import 'package:ecommerce/Statemanagent/counter_app_view_model.dart';
import 'package:ecommerce/Statemanagent/test.b.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TestA extends StatelessWidget {
  TestA({super.key});
  // final CounterAppViewModel counterVM = CounterAppViewModel();

  final CounterAppViewModel counterVM = Get.put(CounterAppViewModel());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        counterVM.onIncrement();
      }),
      appBar: AppBar(
        title: Text("Counter A"),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: [
              TextButton(
                  onPressed: () {
                    Get.to(TestB());
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
