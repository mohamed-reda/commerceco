import 'dart:convert';

import '../.././model/navigate_models/cart_models/data_of_cart_repo.dart';

class CartItemsResponse {
  final bool hasErrors;
  final int statusCode;
  final String message;
  final DataAtCartRes data;

  CartItemsResponse({
    this.hasErrors,
    this.statusCode,
    this.message,
    this.data,
  });

  factory CartItemsResponse.fromRawJson(String str) =>
      CartItemsResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CartItemsResponse.fromJson(Map<String, dynamic> json) =>
      CartItemsResponse(
        hasErrors: json["hasErrors"] == null ? null : json["hasErrors"],
        statusCode: json["statusCode"] == null ? null : json["statusCode"],
        message: json["message"] == null ? null : json["message"],
        data:
            json["data"] == null ? null : DataAtCartRes.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "hasErrors": hasErrors == null ? null : hasErrors,
        "statusCode": statusCode == null ? null : statusCode,
        "message": message == null ? null : message,
        "data": data == null ? null : data.toJson(),
      };
}

class AllProduct {
  final num itemId;
  final num fkCategoryId;
  final num purchaseDiscount;
  final dynamic notes;
  final String itemName;
  final num itemCode;
  final double itemCost;
  final num customerPrice;
  final num packageId;
  final num itemPackageId;
  final String packageName;
  final String packageNameEn;
  final num packageSize;
  final num itemBarCodeId;
  final String barCode;
  final dynamic barCodeFormat;
  final num id;
  final num quantity;

  AllProduct({
    this.itemId,
    this.fkCategoryId,
    this.purchaseDiscount,
    this.notes,
    this.itemName,
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
    this.id,
    this.quantity,
  });

  factory AllProduct.fromRawJson(String str) =>
      AllProduct.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AllProduct.fromJson(Map<String, dynamic> json) => AllProduct(
        itemId: json["itemId"] == null ? null : json["itemId"],
        fkCategoryId:
            json["fkCategoryId"] == null ? null : json["fkCategoryId"],
        purchaseDiscount:
            json["purchaseDiscount"] == null ? null : json["purchaseDiscount"],
        notes: json["notes"],
        itemName: json["itemName"] == null ? null : json["itemName"],
        itemCode: json["itemCode"] == null ? null : json["itemCode"],
        itemCost: json["itemCost"] == null ? null : json["itemCost"].toDouble(),
        customerPrice:
            json["customerPrice"] == null ? null : json["customerPrice"],
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
        id: json["id"] == null ? null : json["id"],
        quantity: json["quantity"] == null ? null : json["quantity"],
      );

  Map<String, dynamic> toJson() => {
        "itemId": itemId == null ? null : itemId,
        "fkCategoryId": fkCategoryId == null ? null : fkCategoryId,
        "purchaseDiscount": purchaseDiscount == null ? null : purchaseDiscount,
        "notes": notes,
        "itemName": itemName == null ? null : itemName,
        "itemCode": itemCode == null ? null : itemCode,
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
        "id": id == null ? null : id,
        "quantity": quantity == null ? null : quantity,
      };
}
