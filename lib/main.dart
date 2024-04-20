import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_speech/routes/app_routes.dart';  // Import the app routes

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',  // Define the initial route
      getPages: AppRoutes.routes,  // Set up the routes
    );
  }
}
