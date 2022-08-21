class Weather {
  String? cityName;
  int? id;
  double? temp;
  double? wind;
  int? humidity;
  double? feelsLike;
  int? pressure;
  int? sunrise;
  int? sunset;
  String? description;

  Weather({
    this.cityName,
    this.id,
    this.temp,
    this.wind,
    this.humidity,
    this.feelsLike,
    this.pressure,
    this.sunrise,
    this.sunset,
    this.description,
  });

  Weather.fromJson(Map<String, dynamic> json) {
    cityName = json['name'];
    temp = json['main']['temp'];
    id = json['weather'][0]['id'];
    wind = json['wind']['speed'];
    humidity = json['main']['humidity'];
    feelsLike = json['main']['feels_like'];
    pressure = json['main']['pressure'];
    sunrise = json['sys']['sunrise'];
    sunset = json['sys']['sunset'];
    description = json['weather'][0]['description'];
  }
}

String getWeatherIcon(int id) {
  if (id < 300) {
    return '🌩';
  } else if (id < 400) {
    return '🌧';
  } else if (id < 600) {
    return '☔️';
  } else if (id < 700) {
    return '☃️';
  } else if (id < 800) {
    return '🌫';
  } else if (id == 800) {
    return '☀️';
  } else if (id <= 804) {
    return '☁️';
  } else {
    return '🤷‍';
  }
}
