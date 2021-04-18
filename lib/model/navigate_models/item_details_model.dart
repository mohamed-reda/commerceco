// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

class Welcome {
  final int itemId;
  final int fkCategoryId;
  final int purchaseDiscount;
  final dynamic notes;
  final String itemName;
  final String itemNameEn;
  final dynamic itemCode;
  final double itemCost;
  final double customerPrice;
  final int packageId;
  final int itemPackageId;
  final String packageName;
  final String packageNameEn;
  final int packageSize;
  final int itemBarCodeId;
  final String barCode;
  final dynamic barCodeFormat;

  Welcome({
    this.itemId,
    this.fkCategoryId,
    this.purchaseDiscount,
    this.notes,
    this.itemName,
    this.itemNameEn,
    this.itemCode,
    this.itemCost,
    this.customerPrice,
    this.packageId,
    this.itemPackageId,
    this.packageName,
    this.packageNameEn,
    this.packageSize,
    this.itemBarCodeId,
    this.barCode,
    this.barCodeFormat,
  });

  factory Welcome.fromRawJson(String str) => Welcome.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
        itemId: json["itemId"] == null ? null : json["itemId"],
        fkCategoryId:
            json["fkCategoryId"] == null ? null : json["fkCategoryId"],
        purchaseDiscount:
            json["purchaseDiscount"] == null ? null : json["purchaseDiscount"],
        notes: json["notes"],
        itemName: json["itemName"] == null ? null : json["itemName"],
        itemNameEn: json["itemNameEn"] == null ? null : json["itemNameEn"],
        itemCode: json["itemCode"],
        itemCost: json["itemCost"] == null ? null : json["itemCost"].toDouble(),
        customerPrice: json["customerPrice"] == null
            ? null
            : json["customerPrice"].toDouble(),
        packageId: json["packageId"] == null ? null : json["packageId"],
        itemPackageId:
            json["itemPackageID"] == null ? null : json["itemPackageID"],
        packageName: json["packageName"] == null ? null : json["packageName"],
        packageNameEn:
            json["packageNameEn"] == null ? null : json["packageNameEn"],
        packageSize: json["packageSize"] == null ? null : json["packageSize"],
        itemBarCodeId:
            json["itemBarCodeID"] == null ? null : json["itemBarCodeID"],
        barCode: json["barCode"] == null ? null : json["barCode"],
        barCodeFormat: json["barCodeFormat"],
      );

  Map<String, dynamic> toJson() => {
        "itemId": itemId == null ? null : itemId,
        "fkCategoryId": fkCategoryId == null ? null : fkCategoryId,
        "purchaseDiscount": purchaseDiscount == null ? null : purchaseDiscount,
        "notes": notes,
        "itemName": itemName == null ? null : itemName,
        "itemNameEn": itemNameEn == null ? null : itemNameEn,
        "itemCode": itemCode,
        "itemCost": itemCost == null ? null : itemCost,
        "customerPrice": customerPrice == null ? null : customerPrice,
        "packageId": packageId == null ? null : packageId,
        "itemPackageID": itemPackageId == null ? null : itemPackageId,
        "packageName": packageName == null ? null : packageName,
        "packageNameEn": packageNameEn == null ? null : packageNameEn,
        "packageSize": packageSize == null ? null : packageSize,
        "itemBarCodeID": itemBarCodeId == null ? null : itemBarCodeId,
        "barCode": barCode == null ? null : barCode,
        "barCodeFormat": barCodeFormat,
      };
}
