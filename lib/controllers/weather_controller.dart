import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/services/weather_service.dart';

class WeatherController extends GetxController {
  final WeatherService _weatherService = WeatherService();

  final isLoading = true.obs;
  var weather = Rxn<WeatherModel>();
  var lat = 0.0.obs;
  var lon = 0.0.obs;

  @override
  void onInit() {
    super.onInit();
    getUserLocation();
  }

  Future<void> getUserLocation() async {
    try {
      isLoading.value = true;

      bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
      if(!serviceEnabled) {
        throw Exception('Location service is disabled');
      }

      LocationPermission permission = await Geolocator.checkPermission();
      if(permission == LocationPermission.denied) {
        permission = await Geolocator.checkPermission();
        if(permission == LocationPermission.denied) {
          throw Exception('Location permission denied');
        }
      }

      if(permission == LocationPermission.deniedForever) {
        throw Exception('Location permission permanently denied');
      }

      Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high
      );

      lat.value = position.latitude;
      lon.value = position.longitude;

       fetchWeather();
    } catch (e) {
      Get.snackbar('Error', e.toString());
    } finally {
      isLoading.value = false;
    }
  }

  Future<void> fetchWeather() async {
    try {
      isLoading.value = true;
      weather.value = await _weatherService.getWeather(lat.value, lon.value);
    } catch (e) {
      Get.snackbar('Error', e.toString());
    } finally {
      isLoading.value = false;
    }
  }
}