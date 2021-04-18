
import 'dart:convert';

class ItemsCategoryResponse {
    final bool hasErrors;
    final dynamic statusCode;
    final dynamic message;
    final Data data;

    ItemsCategoryResponse({
        this.hasErrors,
        this.statusCode,
        this.message,
        this.data,
    });

    factory ItemsCategoryResponse.fromRawJson(String str) => ItemsCategoryResponse.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory ItemsCategoryResponse.fromJson(Map<String, dynamic> json) => ItemsCategoryResponse(
        hasErrors: json["hasErrors"] == null ? null : json["hasErrors"],
        statusCode: json["statusCode"],
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
    final num itemsCount;
    final List<AllItemsDatum> allItemsData;

    Data({
        this.itemsCount,
        this.allItemsData,
    });

    factory Data.fromRawJson(String str) => Data.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        itemsCount: json["itemsCount"] == null ? null : json["itemsCount"],
        allItemsData: json["allItemsData"] == null ? null : List<AllItemsDatum>.from(json["allItemsData"].map((x) => AllItemsDatum.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "itemsCount": itemsCount == null ? null : itemsCount,
        "allItemsData": allItemsData == null ? null : List<dynamic>.from(allItemsData.map((x) => x.toJson())),
    };
}

class AllItemsDatum {
    final num itemId;
    final num fkCategoryId;
    final num purchaseDiscount;
    final dynamic notes;
    final String itemName;
    final String itemNameEn;
    final dynamic itemCode;
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

    AllItemsDatum({
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

    factory AllItemsDatum.fromRawJson(String str) => AllItemsDatum.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory AllItemsDatum.fromJson(Map<String, dynamic> json) => AllItemsDatum(
        itemId: json["itemId"] == null ? null : json["itemId"],
        fkCategoryId: json["fkCategoryId"] == null ? null : json["fkCategoryId"],
        purchaseDiscount: json["purchaseDiscount"] == null ? null : json["purchaseDiscount"],
        notes: json["notes"],
        itemName: json["itemName"] == null ? null : json["itemName"],
        itemNameEn: json["itemNameEn"] == null ? null : json["itemNameEn"],
        itemCode: json["itemCode"],
        itemCost: json["itemCost"] == null ? null : json["itemCost"].toDouble(),
        customerPrice: json["customerPrice"] == null ? null : json["customerPrice"],
        packageId: json["packageId"] == null ? null : json["packageId"],
        itemPackageId: json["itemPackageID"] == null ? null : json["itemPackageID"],
        packageName: json["packageName"] == null ? null : json["packageName"],
        packageNameEn: json["packageNameEn"] == null ? null : json["packageNameEn"],
        packageSize: json["packageSize"] == null ? null : json["packageSize"],
        itemBarCodeId: json["itemBarCodeID"] == null ? null : json["itemBarCodeID"],
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