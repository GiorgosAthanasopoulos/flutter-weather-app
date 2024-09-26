import 'package:flutter/material.dart';
import 'package:flutter_weather_app/lib/forecast.dart';

Widget renderForecast(Forecast forecast) {
  TextStyle style = const TextStyle(fontSize: 30);
  double padding = 8.0;
  return ListView(
    children: [
      Padding(
        padding: EdgeInsets.all(padding),
        child: Text(
          'Condition: ${forecast.condition}',
          style: style,
        ),
      ),
      Padding(
        padding: EdgeInsets.all(padding),
        child: Text(
          'Location: ${forecast.location}',
          style: style,
        ),
      ),
      Padding(
        padding: EdgeInsets.all(padding),
        child: Text(
          'Temp: ${forecast.temp} C',
          style: style,
        ),
      ),
      Padding(
        padding: EdgeInsets.all(padding),
        child: Text(
          'Wind: ${forecast.windSpeed} KPH',
          style: style,
        ),
      ),
      Padding(
        padding: EdgeInsets.all(padding),
        child: Text(
          'Wind Direction: ${forecast.windDirection}',
          style: style,
        ),
      ),
      Padding(
        padding: EdgeInsets.all(padding),
        child: Text(
          'Humidity: ${forecast.humidity} %',
          style: style,
        ),
      ),
      Padding(
        padding: EdgeInsets.all(padding),
        child: Text(
          'Cloud: ${forecast.cloud}',
          style: style,
        ),
      ),
      Padding(
        padding: EdgeInsets.all(padding),
        child: Text(
          'Feels Like: ${forecast.feelsLike} C',
          style: style,
        ),
      ),
      Padding(
        padding: EdgeInsets.all(padding),
        child: Text(
          'UV: ${forecast.uv}',
          style: style,
        ),
      ),
      Image.network(forecast.iconUrl),
    ],
  );
}
