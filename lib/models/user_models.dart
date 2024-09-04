// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

Welcome welcomeFromJson(String str) => Welcome.fromJson(json.decode(str));

String welcomeToJson(Welcome data) => json.encode(data.toJson());

class Welcome {
    String userName;
    String password;
    String name;
    String role;

    Welcome({
        required this.userName,
        required this.password,
        required this.name,
        required this.role,
    });

    factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
        userName: json["user_name"],
        password: json["password"],
        name: json["name"],
        role: json["role"],
    );

    Map<String, dynamic> toJson() => {
        "user_name": userName,
        "password": password,
        "name": name,
        "role": role,
    };
}
