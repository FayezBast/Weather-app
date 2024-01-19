import 'dart:convert';

class WeatherData {
  WeatherData({
      required this.coord,
      required this.weather,
      required this.base,
      required this.main,
      required this.visibility,
      required this.wind,
      required this.clouds,
      required this.dt,
      required this.sys,
      required this.timezone,
      required this.id,
      required this.name,
      required this.cod,
  });
  
  factory WeatherData.fromMap(Map<String, dynamic> map) => WeatherData(
      coord: Coord.fromMap(map['coord']),
      weather: List<Weather>.from(map['weather'].map((e) => Weather.fromMap(e))),
      base: map['base'],
      main: Main.fromMap(map['main']),
      visibility: map['visibility'],
      wind: Wind.fromMap(map['wind']),
      clouds: Clouds.fromMap(map['clouds']),
      dt: map['dt'],
      sys: Sys.fromMap(map['sys']),
      timezone: map['timezone'],
      id: map['id'],
      name: map['name'],
      cod: map['cod'],
  );
  
  factory WeatherData.fromJson(String str) => WeatherData.fromMap(json.decode(str));
  
  Coord coord;
  List<Weather> weather;
  String base;
  Main main;
  int visibility;
  Wind wind;
  Clouds clouds;
  int dt;
  Sys sys;
  int timezone;
  int id;
  String name;
  int cod;
  
  Map<String, dynamic> toMap() => {
      'coord': coord.toMap(),
      'weather': weather.map((e) => e.toMap()).toList(),
      'base': base,
      'main': main.toMap(),
      'visibility': visibility,
      'wind': wind.toMap(),
      'clouds': clouds.toMap(),
      'dt': dt,
      'sys': sys.toMap(),
      'timezone': timezone,
      'id': id,
      'name': name,
      'cod': cod,
  };
  
  String toJson() => json.encode(toMap());
  
}

class Sys {
  Sys({
      required this.type,
      required this.id,
      required this.country,
      required this.sunrise,
      required this.sunset,
  });
  
  factory Sys.fromMap(Map<String, dynamic> map) => Sys(
      type: map['type'],
      id: map['id'],
      country: map['country'],
      sunrise: map['sunrise'],
      sunset: map['sunset'],
  );
  
  factory Sys.fromJson(String str) => Sys.fromMap(json.decode(str));
  
  int type;
  int id;
  String country;
  int sunrise;
  int sunset;
  
  Map<String, dynamic> toMap() => {
      'type': type,
      'id': id,
      'country': country,
      'sunrise': sunrise,
      'sunset': sunset,
  };
  
  String toJson() => json.encode(toMap());
  
}

class Clouds {
  Clouds({required this.all});
  
  factory Clouds.fromMap(Map<String, dynamic> map) => Clouds(
      all: map['all'],
  );
  
  factory Clouds.fromJson(String str) => Clouds.fromMap(json.decode(str));
  
  int all;
  
  Map<String, dynamic> toMap() => {
      'all': all,
  };
  
  String toJson() => json.encode(toMap());
  
}

class Wind {
  Wind({required this.speed, required this.deg});
  
  factory Wind.fromMap(Map<String, dynamic> map) => Wind(
      speed: map['speed'],
      deg: map['deg'],
  );
  
  factory Wind.fromJson(String str) => Wind.fromMap(json.decode(str));
  
  double speed;
  int deg;
  
  Map<String, dynamic> toMap() => {
      'speed': speed,
      'deg': deg,
  };
  
  String toJson() => json.encode(toMap());
  
}

class Main {
  Main({
      required this.temp,
      required this.feelsLike,
      required this.tempMin,
      required this.tempMax,
      required this.pressure,
      required this.humidity,
  });
  
  factory Main.fromMap(Map<String, dynamic> map) => Main(
      temp: map['temp'],
      feelsLike: map['feels_like'],
      tempMin: map['temp_min'],
      tempMax: map['temp_max'],
      pressure: map['pressure'],
      humidity: map['humidity'],
  );
  
  factory Main.fromJson(String str) => Main.fromMap(json.decode(str));
  
  double temp;
  double feelsLike;
  double tempMin;
  double tempMax;
  int pressure;
  int humidity;
  
  Map<String, dynamic> toMap() => {
      'temp': temp,
      'feels_like': feelsLike,
      'temp_min': tempMin,
      'temp_max': tempMax,
      'pressure': pressure,
      'humidity': humidity,
  };
  
  String toJson() => json.encode(toMap());
  
}

class Weather {
  Weather({
      required this.id,
      required this.main,
      required this.description,
      required this.icon,
  });
  
  factory Weather.fromMap(Map<String, dynamic> map) => Weather(
      id: map['id'],
      main: map['main'],
      description: map['description'],
      icon: map['icon'],
  );
  
  factory Weather.fromJson(String str) => Weather.fromMap(json.decode(str));
  
  int id;
  String main;
  String description;
  String icon;
  
  Map<String, dynamic> toMap() => {
      'id': id,
      'main': main,
      'description': description,
      'icon': icon,
  };
  
  String toJson() => json.encode(toMap());
  
}

class Coord {
  Coord({required this.lon, required this.lat});
  
  factory Coord.fromMap(Map<String, dynamic> map) => Coord(
      lon: map['lon'],
      lat: map['lat'],
  );
  
  factory Coord.fromJson(String str) => Coord.fromMap(json.decode(str));
  
  double lon;
  double lat;
  
  Map<String, dynamic> toMap() => {
      'lon': lon,
      'lat': lat,
  };
  
  String toJson() => json.encode(toMap());
  
}

