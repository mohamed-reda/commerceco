import 'dart:convert';

import '../BaseModel.dart';

class UserLogin implements BaseModel {
  String phone;
  String password;

  UserLogin(this.phone, this.password);

  UserLogin.fromJson(Map<String, dynamic> json) {
    phone = json['PhoneNumber'];
    password = json['password'];
  }

  String toRawJson() => json.encode(toJson());

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['PhoneNumber'] = this.phone;
    data['password'] = this.password;
    return data;
  }

  @override
  BaseModel fromJson(Map<String, dynamic> json) {
    // implement fromJson
    return UserLogin.fromJson(json);
  }
}
