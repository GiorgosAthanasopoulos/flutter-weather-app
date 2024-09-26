import 'package:flutter_weather_app/env/env.dart';
import 'package:flutter_weather_app/lib/forecast.dart';
import 'package:flutter_weather_app/net/ip.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

// NOTE: Network image to display icon from url

const String baseUrl = "http://api.weatherapi.com/v1";

Future<Forecast> fetchForecast() async {
  final ip = await fetchPublicIP();
  final response = await http.get(
      Uri.parse('$baseUrl/current.json?key=${Env.weatherApiKey}&q=$ip&aqi=no'));

  if (response.statusCode == 200) {
    return Forecast.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  } else {
    throw Exception('Failed to fetch forecast');
  }
}
