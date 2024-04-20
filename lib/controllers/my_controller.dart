// lib/controllers/my_controller.dart
import 'package:get/get.dart';
import 'package:online_speech/services/api_service.dart';

class MyController extends GetxController {
  var data = ''.obs;  // Observable for reactive updates
  final ApiService apiService = ApiService();  // Instance of the service

  Future<void> fetchData() async {
    try {
      var response = await apiService.get('https://jsonplaceholder.typicode.com/posts/1');
      data.value = response.data.toString();  // Update the observable
    } catch (e) {
      print("Error fetching data: $e");
    }
  }
  Future<void> postData(Map<String, dynamic> newData) async {
    try {
      var response = await apiService.post('/endpoint', newData); // Example POST request
      data.value = response.data.toString(); // Update with response data
    } catch (e) {
      print("Error posting data: $e");
    }
  }
}
