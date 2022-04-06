// To parse this JSON data, do
//
//     final userPersonaModel = userPersonaModelFromJson(jsonString);

import 'dart:convert';

UserPersonaModel userPersonaModelFromJson(String str) => UserPersonaModel.fromJson(json.decode(str));

String userPersonaModelToJson(UserPersonaModel data) => json.encode(data.toJson());

class UserPersonaModel {
  UserPersonaModel({
    this.status,
    this.data,
  });

  String ?status;
  Data ?data;

  factory UserPersonaModel.fromJson(Map<String, dynamic> json) => UserPersonaModel(
    status: json["status"],
    data: Data.fromJson(json["data"]),
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "data": data?.toJson(),
  };
}

class Data {
  Data({
    this.message,
  });

  String? message;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    message: json["message"],
  );

  Map<String, dynamic> toJson() => {
    "message": message,
  };
}
