// To parse this JSON data, do
//
//     final musicData = musicDataFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

class MusicData {
  final int userId;
  final int id;
  final String title;

  MusicData({
    @required this.userId,
    @required this.id,
    @required this.title,
  });

  factory MusicData.fromRawJson(String str) => MusicData.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory MusicData.fromJson(Map<String, dynamic> json) => MusicData(
        userId: json["userId"],
        id: json["id"],
        title: json["title"],
      );

  Map<String, dynamic> toJson() => {
        "userId": userId,
        "id": id,
        "title": title,
      };
}
