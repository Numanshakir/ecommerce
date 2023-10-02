import 'package:ecommerce/Statemanagent/test_a.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import 'counter_view_model_provider.dart';

class CounterAppProvider extends StatefulWidget {
  CounterAppProvider({super.key});

  @override
  State<CounterAppProvider> createState() => _CounterAppProviderState();
}

class _CounterAppProviderState extends State<CounterAppProvider> {
  // final CounterAppProviderViewModel counterVM = CounterAppProviderViewModel();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Future.microtask(() async {
      final counterVM =
          Provider.of<CounterAppProviderViewModel>(context, listen: false);

      counterVM.onIncrement();
    });
  }

  @override
  Widget build(BuildContext context) {
    final counterVM = Provider.of<CounterAppProviderViewModel>(context);

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
          child: Text("Value = ${counterVM.counter} "),
        ),
      ),
    );
  }
}
