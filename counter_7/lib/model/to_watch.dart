// To parse this JSON data, do
//
//     final ToWatch = ToWatchFromJson(jsonString);

import 'dart:convert';

List<ToWatch> toWatchFromJson(String str) =>
    List<ToWatch>.from(json.decode(str).map((x) => ToWatch.fromJson(x)));

String toWatchToJson(List<ToWatch> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ToWatch {
  ToWatch({
    required this.title,
    required this.rating,
    required this.releaseDate,
    required this.watched,
    required this.review,
  });

  String title;
  int rating;
  String releaseDate;
  bool watched;
  String review;

  factory ToWatch.fromJson(Map<String, dynamic> json) => ToWatch(
        title: json["fields"]["title"],
        rating: json["fields"]["rating"],
        releaseDate: json["fields"]["release_date"],
        watched: json["fields"]["watched"],
        review: json["fields"]["review"],
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "rating": rating,
        "release_date": releaseDate,
        "watched": watched,
        "review": review,
      };
}
