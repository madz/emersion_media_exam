// To parse this JSON data, do
//
//     final weatherDayModel = weatherDayModelFromJson(jsonString);

// ignore_for_file: prefer_null_aware_operators, prefer_if_null_operators, constant_identifier_names

import 'dart:convert';

class WeatherDayModel {
  WeatherDayModel({
    required this.id,
    required this.weatherStateName,
    required this.weatherStateAbbr,
    required this.windDirectionCompass,
    required this.created,
    required this.applicableDate,
    required this.minTemp,
    required this.maxTemp,
    required this.theTemp,
    required this.windSpeed,
    required this.windDirection,
    required this.airPressure,
    required this.humidity,
    required this.visibility,
    required this.predictability,
  });

  final int? id;
  final WeatherStateName? weatherStateName;
  final WeatherStateAbbr? weatherStateAbbr;
  final WindDirectionCompass? windDirectionCompass;
  final DateTime? created;
  final DateTime? applicableDate;
  final double? minTemp;
  final double? maxTemp;
  final double? theTemp;
  final double? windSpeed;
  final double? windDirection;
  final double? airPressure;
  final int? humidity;
  final double? visibility;
  final int? predictability;

  WeatherDayModel copyWith({
    int? id,
    WeatherStateName? weatherStateName,
    WeatherStateAbbr? weatherStateAbbr,
    WindDirectionCompass? windDirectionCompass,
    DateTime? created,
    DateTime? applicableDate,
    double? minTemp,
    double? maxTemp,
    double? theTemp,
    double? windSpeed,
    double? windDirection,
    double? airPressure,
    int? humidity,
    double? visibility,
    int? predictability,
  }) =>
      WeatherDayModel(
        id: id ?? this.id,
        weatherStateName: weatherStateName ?? this.weatherStateName,
        weatherStateAbbr: weatherStateAbbr ?? this.weatherStateAbbr,
        windDirectionCompass: windDirectionCompass ?? this.windDirectionCompass,
        created: created ?? this.created,
        applicableDate: applicableDate ?? this.applicableDate,
        minTemp: minTemp ?? this.minTemp,
        maxTemp: maxTemp ?? this.maxTemp,
        theTemp: theTemp ?? this.theTemp,
        windSpeed: windSpeed ?? this.windSpeed,
        windDirection: windDirection ?? this.windDirection,
        airPressure: airPressure ?? this.airPressure,
        humidity: humidity ?? this.humidity,
        visibility: visibility ?? this.visibility,
        predictability: predictability ?? this.predictability,
      );

  factory WeatherDayModel.fromRawJson(String str) =>
      WeatherDayModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory WeatherDayModel.fromJson(Map<String, dynamic> json) =>
      WeatherDayModel(
        id: json["id"],
        weatherStateName: json["weather_state_name"] == null
            ? null
            : weatherStateNameValues.map?[json["weather_state_name"]],
        weatherStateAbbr: json["weather_state_abbr"] == null
            ? null
            : weatherStateAbbrValues.map?[json["weather_state_abbr"]],
        windDirectionCompass: json["wind_direction_compass"] == null
            ? null
            : windDirectionCompassValues.map?[json["wind_direction_compass"]],
        created:
            json["created"] == null ? null : DateTime.parse(json["created"]),
        applicableDate: json["applicable_date"] == null
            ? null
            : DateTime.parse(json["applicable_date"]),
        minTemp: json["min_temp"] == null ? null : json["min_temp"].toDouble(),
        maxTemp: json["max_temp"] == null ? null : json["max_temp"].toDouble(),
        theTemp: json["the_temp"] == null ? null : json["the_temp"].toDouble(),
        windSpeed:
            json["wind_speed"] == null ? null : json["wind_speed"].toDouble(),
        windDirection: json["wind_direction"] == null
            ? null
            : json["wind_direction"].toDouble(),
        airPressure: json["air_pressure"] == null
            ? null
            : json["air_pressure"].toDouble(),
        humidity: json["humidity"] == null ? null : json["humidity"],
        visibility:
            json["visibility"] == null ? null : json["visibility"].toDouble(),
        predictability:
            json["predictability"] == null ? null : json["predictability"],
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "weather_state_name": weatherStateName == null
            ? null
            : weatherStateNameValues.reverse[weatherStateName],
        "weather_state_abbr": weatherStateAbbr == null
            ? null
            : weatherStateAbbrValues.reverse[weatherStateAbbr],
        "wind_direction_compass": windDirectionCompass == null
            ? null
            : windDirectionCompassValues.reverse[windDirectionCompass],
        "created": created == null ? null : created?.toIso8601String(),
        "applicable_date": applicableDate == null
            ? null
            : "${applicableDate?.year.toString().padLeft(4, '0')}-${applicableDate?.month.toString().padLeft(2, '0')}-${applicableDate?.day.toString().padLeft(2, '0')}",
        "min_temp": minTemp == null ? null : minTemp,
        "max_temp": maxTemp == null ? null : maxTemp,
        "the_temp": theTemp == null ? null : theTemp,
        "wind_speed": windSpeed == null ? null : windSpeed,
        "wind_direction": windDirection == null ? null : windDirection,
        "air_pressure": airPressure == null ? null : airPressure,
        "humidity": humidity == null ? null : humidity,
        "visibility": visibility == null ? null : visibility,
        "predictability": predictability == null ? null : predictability,
      };
}

enum WeatherStateAbbr { S, HC, LC, LR, HR }

final weatherStateAbbrValues = EnumValues({
  "hc": WeatherStateAbbr.HC,
  "hr": WeatherStateAbbr.HR,
  "lc": WeatherStateAbbr.LC,
  "lr": WeatherStateAbbr.LR,
  "s": WeatherStateAbbr.S
});

enum WeatherStateName {
  SHOWERS,
  HEAVY_CLOUD,
  LIGHT_CLOUD,
  LIGHT_RAIN,
  HEAVY_RAIN
}

final weatherStateNameValues = EnumValues({
  "Heavy Cloud": WeatherStateName.HEAVY_CLOUD,
  "Heavy Rain": WeatherStateName.HEAVY_RAIN,
  "Light Cloud": WeatherStateName.LIGHT_CLOUD,
  "Light Rain": WeatherStateName.LIGHT_RAIN,
  "Showers": WeatherStateName.SHOWERS
});

enum WindDirectionCompass { NNW, NW, WNW, N, W, NNE }

final windDirectionCompassValues = EnumValues({
  "N": WindDirectionCompass.N,
  "NNE": WindDirectionCompass.NNE,
  "NNW": WindDirectionCompass.NNW,
  "NW": WindDirectionCompass.NW,
  "W": WindDirectionCompass.W,
  "WNW": WindDirectionCompass.WNW
});

class EnumValues<T> {
  Map<String, T>? map;
  Map<T, String>? reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map?.map((k, v) => MapEntry(v, k));
    }
    return reverseMap!;
  }
}
