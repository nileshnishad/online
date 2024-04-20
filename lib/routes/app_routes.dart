// lib/routes/app_routes.dart
import 'package:get/get.dart';
import '../views/home_view.dart';

class AppRoutes {
  static final routes = [
    GetPage(name: '/', page: () => HomeView()),  // Define a named route for the home view
    // Add other routes here
  ];
}
