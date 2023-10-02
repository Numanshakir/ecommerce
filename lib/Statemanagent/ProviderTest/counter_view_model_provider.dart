import 'package:flutter/material.dart';

class CounterAppProviderViewModel extends ChangeNotifier {
  int counter = 0;

  onIncrement() {
    counter++;
    print(counter);
    notifyListeners();
  }

}
