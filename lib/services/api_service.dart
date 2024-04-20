import 'package:dio/dio.dart';

class ApiService {
  final Dio _dio;

  ApiService()
      : _dio = Dio(BaseOptions(
          baseUrl: 'https://api.example.com', // Set your base API URL here
          connectTimeout: Duration(seconds: 10), // Connection timeout
          receiveTimeout: Duration(seconds: 10), // Response timeout
        )) {
    _dio.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) {
        options.headers['Authorization'] = 'Bearer YOUR_TOKEN';
        print('Request: ${options.method} ${options.path}');
        handler.next(options); // Continue with the request
      },
      onResponse: (response, handler) {
        // Log or modify the response
        print('Response: ${response.statusCode} - ${response.data}');
        handler.next(response); // Continue with the response
      },
      onError: (DioError error, handler) {
        // Handle errors or retry logic
        print('Error: ${error.message}');
        handler.next(error); // Continue with error handling
      },
    ));
  }

  Future<Response> get(String endpoint, {Map<String, dynamic>? params}) async {
    // Optional params for query strings
    return await _dio.get(endpoint, queryParameters: params);
  }

  Future<Response> post(
      String endpoint, Map<String, dynamic> data) async {
    return await _dio.post(endpoint, data: data);
  }

  Future<Response> put(
      String endpoint, Map<String, dynamic> data) async {
    return await _dio.put(endpoint, data: data);
  }

  Future<Response> delete(String endpoint) async {
    return await _dio.delete(endpoint);
  }

  Future<Response> patch(
      String endpoint, Map<String, dynamic> data) async {
    return await _dio.patch(endpoint, data: data);
  }
}
