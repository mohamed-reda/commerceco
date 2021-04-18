import 'dart:convert';

class ChangePasswordModel {
  final num userId;
  final String oldPassword;
  final String newPassword;

  ChangePasswordModel({
    this.userId,
    this.oldPassword,
    this.newPassword,
  });

  factory ChangePasswordModel.fromRawJson(String str) =>
      ChangePasswordModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ChangePasswordModel.fromJson(Map<String, dynamic> json) =>
      ChangePasswordModel(
        userId: json["userID"] == null ? null : json["userID"],
        oldPassword: json["oldPassword"] == null ? null : json["oldPassword"],
        newPassword: json["newPassword"] == null ? null : json["newPassword"],
      );

  Map<String, dynamic> toJson() => {
        "userID": userId == null ? null : userId,
        "oldPassword": oldPassword == null ? null : oldPassword,
        "newPassword": newPassword == null ? null : newPassword,
      };
}
