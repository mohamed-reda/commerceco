// To parse this JSON data, do
//
//     final addItemToCartModel = addItemToCartModelFromJson(jsonString);

import 'dart:convert';

class AddItemToCartModel {
  final int id;
  final int quantity;
  final bool isNew;
  final int fkPackageId;
  final int fkIemId;
  final DateTime insertDateTime;
  final int fkItemBarCodeId;
  final int fkDeliveryClientId;

  AddItemToCartModel({
    this.id = 0,
    this.quantity,
    this.isNew,
    this.fkPackageId,
    this.fkIemId,
    this.insertDateTime,
    this.fkItemBarCodeId,
    this.fkDeliveryClientId,
  });

  factory AddItemToCartModel.fromRawJson(String str) =>
      AddItemToCartModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AddItemToCartModel.fromJson(Map<String, dynamic> json) =>
      AddItemToCartModel(
        id: json["id"] == null ? null : json["id"],
        quantity: json["quantity"] == null ? null : json["quantity"],
        isNew: json["isNew"] == null ? null : json["isNew"],
        fkPackageId: json["fkPackageID"] == null ? null : json["fkPackageID"],
        fkIemId: json["FkIemId"] == null ? null : json["FkIemId"],
        insertDateTime: json["insertDateTime"] == null
            ? null
            : DateTime.parse(json["insertDateTime"]),
        fkItemBarCodeId:
            json["fk_itemBarCodeID"] == null ? null : json["fk_itemBarCodeID"],
        fkDeliveryClientId: json["fkDeliveryClientId"] == null
            ? null
            : json["fkDeliveryClientId"],
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "quantity": quantity == null ? null : quantity,
        "isNew": isNew == null ? null : isNew,
        "fkPackageID": fkPackageId == null ? null : fkPackageId,
        "FkIemId": fkIemId == null ? null : fkIemId,
        "insertDateTime":
            insertDateTime == null ? null : insertDateTime.toIso8601String(),
        "fk_itemBarCodeID": fkItemBarCodeId == null ? null : fkItemBarCodeId,
        "fkDeliveryClientId":
            fkDeliveryClientId == null ? null : fkDeliveryClientId,
      };
}
