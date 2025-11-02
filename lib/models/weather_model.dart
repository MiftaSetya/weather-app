class WeatherModel {
  final double temp;
  final double feelsLike;
  final double min;
  final double max;
  final String description;
  final int humidity;
  final double windSpeed;
  final String icon;

  WeatherModel({
    required this.temp,
    required this.feelsLike,
    required this.min,
    required this.max,
    required this.description,
    required this.humidity,
    required this.windSpeed,
    required this.icon,
  });

  factory WeatherModel.fromJson(Map<String, dynamic> json) {
    final current = json['current'];
    final today = json['daily'][0];
    return WeatherModel(
      temp: (current['temp'] as num).toDouble(),
      feelsLike: (current['feels_like'] as num).toDouble(),
      min: (today['temp']['min'] as num).toDouble(),
      max: (today['temp']['max'] as num).toDouble(),
      description: current['weather'][0]['description'] ?? '',
      humidity: (current['humidity'] as num).toInt(),
      windSpeed: (current['wind_speed'] as num).toDouble(),
      icon: current['weather'][0]['icon'] ?? ''
    );
  }
}
