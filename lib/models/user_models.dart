// To parse this JSON data, do
//
//     final usermodel = usermodelFromJson(jsonString);

import 'dart:convert';

Usermodel usermodelFromJson(String str) => Usermodel.fromJson(json.decode(str));

String usermodelToJson(Usermodel data) => json.encode(data.toJson());

class Usermodel {
  User user;
  String accessToken;
  String refreshToken;

  Usermodel({
    required this.user,
    required this.accessToken,
    required this.refreshToken,
  });

  factory Usermodel.fromJson(Map<String, dynamic> json) => Usermodel(
        user: User.fromJson(json["user"]),
        accessToken: json["accessToken"],
        refreshToken: json["refreshToken"],
      );

  get role => null;

  Map<String, dynamic> toJson() => {
        "user": user.toJson(),
        "accessToken": accessToken,
        "refreshToken": refreshToken,
      };
}

class User {
  String id;
  String userName;
  int v;

  User({
    required this.id,
    required this.userName,
    required this.v,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["_id"],
        userName: json["user_name"],
        v: json["__v"],
      );

  get name => null;

  Map<String, dynamic> toJson() => {
        "_id": id,
        "user_name": userName,
        "__v": v,
      };
}
