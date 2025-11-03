import 'package:weather_app/core/api_client.dart';
import 'package:weather_app/models/weather_model.dart';

class WeatherService extends ApiClient {
  Future<WeatherModel> getWeather(double lat, double lon) async {
    try {
      final response = await dio.get(
        '/onecall',
        queryParameters: {
          'lat': lat,
          'lon': lon,
          'appid': apiKey,
          'units': 'metric'
        }
      );

      return WeatherModel.fromJson(response.data);
    } catch (e) {
      throw Exception('Failed to fetch weather $e');
    }
  }
}