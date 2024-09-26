import "package:flutter_weather_app/net/weather.dart";

class Forecast {
  final String condition;
  final String location;
  final double temp;
  final double windSpeed;
  final String windDirection;
  final int humidity;
  final int cloud;
  final double feelsLike;
  final double uv;
  final String iconUrl;

  const Forecast(
      {required this.condition,
      required this.location,
      required this.temp,
      required this.windSpeed,
      required this.windDirection,
      required this.humidity,
      required this.cloud,
      required this.feelsLike,
      required this.uv,
      required this.iconUrl});

  factory Forecast.fromJson(Map<String, dynamic> json) {
    return Forecast(
      condition: json['current']['condition']['text'],
      location:
          '${json['location']['name']}, ${json['location']['region']}, ${json['location']['country']}',
      temp: json['current']['temp_c'],
      windSpeed: json['current']['wind_kph'],
      windDirection: json['current']['wind_dir'],
      humidity: json['current']['humidity'],
      cloud: json['current']['cloud'],
      feelsLike: json['current']['feelslike_c'],
      uv: json['current']['uv'],
      // ignore: prefer_interpolation_to_compose_strings
      iconUrl: 'https://' +
          '${json['current']['condition']['icon']}'
              .replaceFirst("/", "")
              .replaceFirst("/", ""),
    );
  }
}
