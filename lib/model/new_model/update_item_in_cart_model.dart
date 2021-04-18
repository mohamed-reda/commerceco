import 'dart:convert';

class UpdateItemInCartModel {
  final int quantity;
  final int fkPackageId;
  final int fkIemId;
  final int fkItemBarCodeId;
  final int fkDeliveryClientId;

  UpdateItemInCartModel({
    this.quantity,
    this.fkPackageId,
    this.fkIemId,
    this.fkItemBarCodeId,
    this.fkDeliveryClientId,
  });

  factory UpdateItemInCartModel.fromRawJson(String str) => UpdateItemInCartModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory UpdateItemInCartModel.fromJson(Map<String, dynamic> json) => UpdateItemInCartModel(
    quantity: json["quantity"] == null ? null : json["quantity"],
    fkPackageId: json["fkPackageID"] == null ? null : json["fkPackageID"],
    fkIemId: json["fkIemId"] == null ? null : json["fkIemId"],
    fkItemBarCodeId: json["fk_itemBarCodeID"] == null ? null : json["fk_itemBarCodeID"],
    fkDeliveryClientId: json["fkDeliveryClientId"] == null ? null : json["fkDeliveryClientId"],
  );

  Map<String, dynamic> toJson() => {
    "quantity": quantity == null ? null : quantity,
    "fkPackageID": fkPackageId == null ? null : fkPackageId,
    "fkIemId": fkIemId == null ? null : fkIemId,
    "fk_itemBarCodeID": fkItemBarCodeId == null ? null : fkItemBarCodeId,
    "fkDeliveryClientId": fkDeliveryClientId == null ? null : fkDeliveryClientId,
  };
}
