class Weather {
  final String cityName;
  final double Temperature;
  final String mainCondition;

  Weather({
    required this.cityName,
    required this.Temperature,
    required this.mainCondition,
  });

  factory Weather.fromJson(Map<String, dynamic> json) {
    return Weather(
        cityName: json['cityName'],
        Temperature: json['main']['temp'].toDouble(),
        mainCondition: json['weather'][0]['main']);
  }
}
