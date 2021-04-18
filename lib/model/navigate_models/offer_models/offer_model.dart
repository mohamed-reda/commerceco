import 'dart:convert';

import '../../BaseModel.dart';

class OffersResponse implements BaseModel {
  final bool hasErrors;
  final dynamic statusCode;
  final dynamic message;
  final List<Offers> data;

  OffersResponse({
    this.hasErrors,
    this.statusCode,
    this.message,
    this.data,
  });

  factory OffersResponse.fromRawJson(String str) =>
      OffersResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory OffersResponse.fromJson(Map<String, dynamic> json) => OffersResponse(
        hasErrors: json["hasErrors"] == null ? null : json["hasErrors"],
        statusCode: json["statusCode"],
        message: json["message"],
        data: json["data"] == null
            ? null
            : List<Offers>.from(json["data"].map((x) => Offers.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "hasErrors": hasErrors == null ? null : hasErrors,
        "statusCode": statusCode,
        "message": message,
        "data": data == null
            ? null
            : List<dynamic>.from(data.map((x) => x.toJson())),
      };

  @override
  OffersResponse fromJson(Map<String, dynamic> json) {
    return OffersResponse.fromJson(json);
  }
}

class Offers {
  final num itemId;
  final num promoHeaderId;
  final num promoNo;
  final String promoName;
  final String transDate;
  final String promoDateFrom;
  final String promoDateTo;
  final String promoTimeFrom;
  final String promoTimeTo;
  final dynamic purchaseDateFrom;
  final dynamic purchaseDateTo;
  final dynamic insDate;
  final num itemCost;
  final num custPrice;
  final num newCustPrice;
  final dynamic vendDiscount;
  final num itemTax;
  final String itemName;
  final String itemNameEn;

  Offers({
    this.itemId,
    this.promoHeaderId,
    this.promoNo,
    this.promoName,
    this.transDate,
    this.promoDateFrom,
    this.promoDateTo,
    this.promoTimeFrom,
    this.promoTimeTo,
    this.purchaseDateFrom,
    this.purchaseDateTo,
    this.insDate,
    this.itemCost,
    this.custPrice,
    this.newCustPrice,
    this.vendDiscount,
    this.itemTax,
    this.itemName,
    this.itemNameEn,
  });

  factory Offers.fromRawJson(String str) => Offers.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Offers.fromJson(Map<String, dynamic> json) => Offers(
        itemId: json["itemId"] == null ? null : json["itemId"],
        promoHeaderId:
            json["promoHeaderId"] == null ? null : json["promoHeaderId"],
        promoNo: json["promoNo"] == null ? null : json["promoNo"],
        promoName: json["promoName"] == null ? null : json["promoName"],
        transDate: json["transDate"] == null ? null : json["transDate"],
        promoDateFrom:
            json["promoDateFrom"] == null ? null : json["promoDateFrom"],
        promoDateTo: json["promoDateTo"] == null ? null : json["promoDateTo"],
        promoTimeFrom:
            json["promoTimeFrom"] == null ? null : json["promoTimeFrom"],
        promoTimeTo: json["promoTimeTo"] == null ? null : json["promoTimeTo"],
        purchaseDateFrom: json["purchaseDateFrom"],
        purchaseDateTo: json["purchaseDateTo"],
        insDate: json["insDate"],
        itemCost: json["itemCost"] == null ? null : json["itemCost"],
        custPrice: json["custPrice"] == null ? null : json["custPrice"],
        newCustPrice:
            json["newCustPrice"] == null ? null : json["newCustPrice"],
        vendDiscount: json["vendDiscount"],
        itemTax: json["itemTax"] == null ? null : json["itemTax"],
        itemName: json["itemName"] == null ? null : json["itemName"],
        itemNameEn: json["itemNameEn"] == null ? null : json["itemNameEn"],
      );

  Map<String, dynamic> toJson() => {
        "itemId": itemId == null ? null : itemId,
        "promoHeaderId": promoHeaderId == null ? null : promoHeaderId,
        "promoNo": promoNo == null ? null : promoNo,
        "promoName": promoName == null ? null : promoName,
        "transDate": transDate == null ? null : transDate,
        "promoDateFrom": promoDateFrom == null ? null : promoDateFrom,
        "promoDateTo": promoDateTo == null ? null : promoDateTo,
        "promoTimeFrom": promoTimeFrom == null ? null : promoTimeFrom,
        "promoTimeTo": promoTimeTo == null ? null : promoTimeTo,
        "purchaseDateFrom": purchaseDateFrom,
        "purchaseDateTo": purchaseDateTo,
        "insDate": insDate,
        "itemCost": itemCost == null ? null : itemCost,
        "custPrice": custPrice == null ? null : custPrice,
        "newCustPrice": newCustPrice == null ? null : newCustPrice,
        "vendDiscount": vendDiscount,
        "itemTax": itemTax == null ? null : itemTax,
        "itemName": itemName == null ? null : itemName,
        "itemNameEn": itemNameEn == null ? null : itemNameEn,
      };
}
