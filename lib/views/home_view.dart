// lib/views/home_view.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/counter_controller.dart';  // Import the controller

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final CounterController controller = Get.put(CounterController());  // Instantiate the controller
    
    return Scaffold(
      appBar: AppBar(title: Text("GetX Counter Example")),
      body: Center(
        child: Obx(() => Text(
          "Count: ${controller.count}",
          style: TextStyle(fontSize: 24),
        )),  // Obx listens for changes in reactive variables
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: controller.increment,
        child: Icon(Icons.add),
      ),
    );
  }
}
