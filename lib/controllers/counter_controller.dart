import 'package:get/get.dart';

class CounterController extends GetxController {
  var count = 0.obs;  // Use .obs to make this reactive

  void increment() {
    count++;  // This will trigger Obx to update the UI
  }

  void decrement() {
    count--;  // Similar to increment, but for decrementing
  }
}
