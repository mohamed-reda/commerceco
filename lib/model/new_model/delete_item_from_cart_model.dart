import 'dart:convert';

class DeleteItemFromCartModel {
  final int fkPackageId;
  final int fkIemId;
  final int fkItemBarCodeId;
  final int fkDeliveryClientId;

  DeleteItemFromCartModel({
    this.fkPackageId,
    this.fkIemId,
    this.fkItemBarCodeId,
    this.fkDeliveryClientId,
  });

  factory DeleteItemFromCartModel.fromRawJson(String str) => DeleteItemFromCartModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory DeleteItemFromCartModel.fromJson(Map<String, dynamic> json) => DeleteItemFromCartModel(
    fkPackageId: json["fkPackageID"] == null ? null : json["fkPackageID"],
    fkIemId: json["fkIemId"] == null ? null : json["fkIemId"],
    fkItemBarCodeId: json["fk_itemBarCodeID"] == null ? null : json["fk_itemBarCodeID"],
    fkDeliveryClientId: json["fkDeliveryClientId"] == null ? null : json["fkDeliveryClientId"],
  );

  Map<String, dynamic> toJson() => {
    "fkPackageID": fkPackageId == null ? null : fkPackageId,
    "fkIemId": fkIemId == null ? null : fkIemId,
    "fk_itemBarCodeID": fkItemBarCodeId == null ? null : fkItemBarCodeId,
    "fkDeliveryClientId": fkDeliveryClientId == null ? null : fkDeliveryClientId,
  };
}
