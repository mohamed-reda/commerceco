// To parse this JSON data, do
//
//     final registerModel = registerModelFromJson(jsonString);

import 'dart:convert';

import 'package:flutter/foundation.dart';


class RegisterModel {
  final int delClientId;
  final String clientName;
  final String clientNameEn;
  final int fkAreaId;
  final String phone;
  final String address;
  final String floor;
  final String apartment;
  final String specialMark;
  final String password;
  final String email;
  final String locationAddress;
  final String houseNum;

  RegisterModel({
    @required this.phone,
    @required this.email,
    @required this.password,
    this.delClientId = 0,
    this.clientName = '',
    this.clientNameEn = '',//clientNameEn=clientName
    this.fkAreaId = 0,
    this.address = '',
    this.floor = '',
    this.apartment = '',
    this.specialMark = '',
    this.locationAddress = '',//lat-lang
    this.houseNum = 'houseNum',//will be added
  });

  factory RegisterModel.fromRawJson(String str) =>
      RegisterModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory RegisterModel.fromJson(Map<String, dynamic> json) => RegisterModel(
        delClientId: json["delClientId"] == null ? null : json["delClientId"],
        clientName: json["clientName"] == null ? null : json["clientName"],
        clientNameEn:
            json["clientNameEn"] == null ? null : json["clientNameEn"],
        fkAreaId: json["fkAreaId"] == null ? null : json["fkAreaId"],
        phone: json["phone"] == null ? null : json["phone"],
        address: json["address"] == null ? null : json["address"],
        floor: json["floor"] == null ? null : json["floor"],
        apartment: json["apartment"] == null ? null : json["apartment"],
        specialMark: json["specialMark"] == null ? null : json["specialMark"],
        password: json["password"] == null ? null : json["password"],
        email: json["email"] == null ? null : json["email"],
        locationAddress:
            json["locationAddress"] == null ? null : json["locationAddress"],
        houseNum: json["houseNum"] == null ? null : json["houseNum"],
      );

  Map<String, dynamic> toJson() => {
        "delClientId": delClientId == null ? null : delClientId,
        "clientName": clientName == null ? null : clientName,
        "clientNameEn": clientNameEn == null ? null : clientNameEn,
        "fkAreaId": fkAreaId == null ? null : fkAreaId,
        "phone": phone == null ? null : phone,
        "address": address == null ? null : address,
        "floor": floor == null ? null : floor,
        "apartment": apartment == null ? null : apartment,
        "specialMark": specialMark == null ? null : specialMark,
        "password": password == null ? null : password,
        "email": email == null ? null : email,
        "locationAddress": locationAddress == null ? null : locationAddress,
        "houseNum": houseNum == null ? null : houseNum,
      };
}
