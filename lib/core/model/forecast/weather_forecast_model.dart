// To parse this JSON data, do
//
//     final weatherForecastModel = weatherForecastModelFromJson(jsonString);

// ignore_for_file: prefer_if_null_operators, prefer_null_aware_operators, unnecessary_null_comparison

import 'dart:convert';

class WeatherForecastModel {
  WeatherForecastModel({
    required this.consolidatedWeather,
    required this.time,
    required this.sunRise,
    required this.sunSet,
    required this.timezoneName,
    required this.parent,
    required this.sources,
    required this.title,
    required this.locationType,
    required this.woeid,
    required this.lattLong,
    required this.timezone,
  });

  final List<ConsolidatedWeather>? consolidatedWeather;
  final DateTime? time;
  final DateTime? sunRise;
  final DateTime? sunSet;
  final String? timezoneName;
  final Parent? parent;
  final List<Source>? sources;
  final String? title;
  final String? locationType;
  final int? woeid;
  final String? lattLong;
  final String? timezone;

  WeatherForecastModel copyWith({
    List<ConsolidatedWeather>? consolidatedWeather,
    DateTime? time,
    DateTime? sunRise,
    DateTime? sunSet,
    String? timezoneName,
    Parent? parent,
    List<Source>? sources,
    String? title,
    String? locationType,
    int? woeid,
    String? lattLong,
    String? timezone,
  }) =>
      WeatherForecastModel(
        consolidatedWeather: consolidatedWeather ?? this.consolidatedWeather,
        time: time ?? this.time,
        sunRise: sunRise ?? this.sunRise,
        sunSet: sunSet ?? this.sunSet,
        timezoneName: timezoneName ?? this.timezoneName,
        parent: parent ?? this.parent,
        sources: sources ?? this.sources,
        title: title ?? this.title,
        locationType: locationType ?? this.locationType,
        woeid: woeid ?? this.woeid,
        lattLong: lattLong ?? this.lattLong,
        timezone: timezone ?? this.timezone,
      );

  factory WeatherForecastModel.fromRawJson(String str) =>
      WeatherForecastModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory WeatherForecastModel.fromJson(Map<String, dynamic> json) =>
      WeatherForecastModel(
        consolidatedWeather: json["consolidated_weather"] == null
            ? null
            : List<ConsolidatedWeather>.from(json["consolidated_weather"]
                .map((x) => ConsolidatedWeather.fromJson(x))),
        time: json["time"] == null ? null : DateTime.parse(json["time"]),
        sunRise:
            json["sun_rise"] == null ? null : DateTime.parse(json["sun_rise"]),
        sunSet:
            json["sun_set"] == null ? null : DateTime.parse(json["sun_set"]),
        timezoneName:
            json["timezone_name"] == null ? null : json["timezone_name"],
        parent: json["parent"] == null ? null : Parent.fromJson(json["parent"]),
        sources: json["sources"] == null
            ? null
            : List<Source>.from(json["sources"].map((x) => Source.fromJson(x))),
        title: json["title"] == null ? null : json["title"],
        locationType:
            json["location_type"] == null ? null : json["location_type"],
        woeid: json["woeid"] == null ? null : json["woeid"],
        lattLong: json["latt_long"] == null ? null : json["latt_long"],
        timezone: json["timezone"] == null ? null : json["timezone"],
      );

  Map<String, dynamic> toJson() => {
        "consolidated_weather": consolidatedWeather == null
            ? null
            : List<dynamic>.from(consolidatedWeather!.map((x) => x.toJson())),
        "time": time == null ? null : time?.toIso8601String(),
        "sun_rise": sunRise == null ? null : sunRise?.toIso8601String(),
        "sun_set": sunSet == null ? null : sunSet?.toIso8601String(),
        "timezone_name": timezoneName == null ? null : timezoneName,
        "parent": parent == null ? null : parent?.toJson(),
        "sources": sources == null
            ? null
            : List<dynamic>.from(sources!.map((x) => x.toJson())),
        "title": title == null ? null : title,
        "location_type": locationType == null ? null : locationType,
        "woeid": woeid == null ? null : woeid,
        "latt_long": lattLong == null ? null : lattLong,
        "timezone": timezone == null ? null : timezone,
      };
}

class ConsolidatedWeather {
  ConsolidatedWeather({
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
  final String? weatherStateName;
  final String? weatherStateAbbr;
  final String? windDirectionCompass;
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

  ConsolidatedWeather copyWith({
    int? id,
    String? weatherStateName,
    String? weatherStateAbbr,
    String? windDirectionCompass,
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
      ConsolidatedWeather(
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

  factory ConsolidatedWeather.fromRawJson(String str) =>
      ConsolidatedWeather.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ConsolidatedWeather.fromJson(Map<String, dynamic> json) =>
      ConsolidatedWeather(
        id: json["id"] == null ? null : json["id"],
        weatherStateName: json["weather_state_name"] == null
            ? null
            : json["weather_state_name"],
        weatherStateAbbr: json["weather_state_abbr"] == null
            ? null
            : json["weather_state_abbr"],
        windDirectionCompass: json["wind_direction_compass"] == null
            ? null
            : json["wind_direction_compass"],
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
        "id": id,
        "weather_state_name": weatherStateName,
        "weather_state_abbr": weatherStateAbbr,
        "wind_direction_compass": windDirectionCompass,
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

class Parent {
  Parent({
    required this.title,
    required this.locationType,
    required this.woeid,
    required this.lattLong,
  });

  final String title;
  final String locationType;
  final int woeid;
  final String lattLong;

  Parent copyWith({
    String? title,
    String? locationType,
    int? woeid,
    String? lattLong,
  }) =>
      Parent(
        title: title ?? this.title,
        locationType: locationType ?? this.locationType,
        woeid: woeid ?? this.woeid,
        lattLong: lattLong ?? this.lattLong,
      );

  factory Parent.fromRawJson(String str) => Parent.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Parent.fromJson(Map<String, dynamic> json) => Parent(
        title: json["title"] == null ? null : json["title"],
        locationType:
            json["location_type"] == null ? null : json["location_type"],
        woeid: json["woeid"] == null ? null : json["woeid"],
        lattLong: json["latt_long"] == null ? null : json["latt_long"],
      );

  Map<String, dynamic> toJson() => {
        "title": title == null ? null : title,
        "location_type": locationType == null ? null : locationType,
        "woeid": woeid == null ? null : woeid,
        "latt_long": lattLong == null ? null : lattLong,
      };
}

class Source {
  Source({
    required this.title,
    required this.slug,
    required this.url,
    required this.crawlRate,
  });

  final String title;
  final String slug;
  final String url;
  final int crawlRate;

  Source copyWith({
    String? title,
    String? slug,
    String? url,
    int? crawlRate,
  }) =>
      Source(
        title: title ?? this.title,
        slug: slug ?? this.slug,
        url: url ?? this.url,
        crawlRate: crawlRate ?? this.crawlRate,
      );

  factory Source.fromRawJson(String str) => Source.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Source.fromJson(Map<String, dynamic> json) => Source(
        title: json["title"] == null ? null : json["title"],
        slug: json["slug"] == null ? null : json["slug"],
        url: json["url"] == null ? null : json["url"],
        crawlRate: json["crawl_rate"] == null ? null : json["crawl_rate"],
      );

  Map<String, dynamic> toJson() => {
        "title": title == null ? null : title,
        "slug": slug == null ? null : slug,
        "url": url == null ? null : url,
        "crawl_rate": crawlRate == null ? null : crawlRate,
      };
}
