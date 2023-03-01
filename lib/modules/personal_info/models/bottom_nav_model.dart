// To parse this JSON data, do
//
//     final profileInfoModel = profileInfoModelFromJson(jsonString);

import 'dart:convert';

List<BottomNavModel> profileInfoModelFromJson(String str) => List<BottomNavModel>.from(json.decode(str).map((x) => BottomNavModel.fromJson(x)));

String profileInfoModelToJson(List<BottomNavModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class BottomNavModel {
  BottomNavModel({
    this.key,
    this.value,
  });

  int? key;
  String? value;
  bool isSelected = false;

  factory BottomNavModel.fromJson(Map<String, dynamic> json) => BottomNavModel(
    key: json["key"],
    value: json["value"],
  );

  Map<String, dynamic> toJson() => {
    "key": key,
    "value": value,
  };
}