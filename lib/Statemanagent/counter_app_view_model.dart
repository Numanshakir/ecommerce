import 'package:get/get.dart';

class CounterAppViewModel extends GetxController {
  RxInt counter = 0.obs;

  onIncrement() {
    counter++;
    print(counter);
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
    print("Instant Deleted");
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    print("Instant Create");
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    print("Instant Deleted");
  }
}
