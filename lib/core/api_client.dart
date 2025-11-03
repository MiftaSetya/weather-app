import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class ApiClient {
  late final Dio dio;

  ApiClient() {
    dio = Dio(BaseOptions(
      baseUrl: 'https://api.openweathermap.org/data/3.0',
      connectTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 10),
    ));

    dio.interceptors.add(LogInterceptor(
      request: true,
      requestBody: true,
      responseBody: true,
    ));
  }

  String get apiKey => dotenv.env['OPEN_WEATHER_API_KEY'] ?? '';
}