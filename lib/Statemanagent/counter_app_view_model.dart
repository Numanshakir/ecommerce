
import 'package:get/get.dart';

class CounterAppViewModel extends GetxController{

RxInt counter=0.obs;


onIncrement(){
  counter++;
  print(counter);
}



}