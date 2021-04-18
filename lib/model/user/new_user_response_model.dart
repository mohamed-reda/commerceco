import 'dart:convert';

import '../../model/user/user_data.dart';

class NewUserResponseModel {
  final bool hasErrors;
  final dynamic statusCode;
  final dynamic message;
  final Data data;

  NewUserResponseModel({
    this.hasErrors,
    this.statusCode,
    this.message,
    this.data,
  });

  factory NewUserResponseModel.fromRawJson(String str) =>
      NewUserResponseModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory NewUserResponseModel.fromJson(Map<String, dynamic> json) =>
      NewUserResponseModel(
        hasErrors: json["hasErrors"] == null ? null : json["hasErrors"],
        statusCode: json["statusCode"] == null ? null : json["statusCode"],
        message: json["message"],
        data: json["data"] == null ? null : Data.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "hasErrors": hasErrors == null ? null : hasErrors,
        "statusCode": statusCode,
        "message": message,
        "data": data == null ? null : data.toJson(),
      };
}

class Data {
  final UserData userData;
  final String token;

  Data({
    this.userData,
    this.token,
  });

  factory Data.fromRawJson(String str) => Data.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        userData: json["userData"] == null
            ? null
            : UserData.fromJson(json["userData"]),
        token: json["token"] == null ? null : json["token"],
      );

  Map<String, dynamic> toJson() => {
        "userData": userData == null ? null : userData.toJson(),
        "token": token == null ? null : token,
      };
}
