
import 'dart:convert';

class AreasResponse {
    final bool hasErrors;
    final dynamic statusCode;
    final dynamic message;
    final List<Area> areas;

    AreasResponse({
        this.hasErrors,
        this.statusCode,
        this.message,
        this.areas,
    });

    factory AreasResponse.fromRawJson(String str) => AreasResponse.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory AreasResponse.fromJson(Map<String, dynamic> json) => AreasResponse(
        hasErrors: json["hasErrors"] == null ? null : json["hasErrors"],
        statusCode: json["statusCode"],
        message: json["message"],
        areas: json["data"] == null ? null : List<Area>.from(json["data"].map((x) => Area.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "hasErrors": hasErrors == null ? null : hasErrors,
        "statusCode": statusCode,
        "message": message,
        "data": areas == null ? null : List<dynamic>.from(areas.map((x) => x.toJson())),
    };
}

class Area {
    final num areaId;
    final String areaName;
    final String areaNameEn;
    final num fkStoreId;
    final num deliveryAmount;
    final num insUserId;
    final DateTime insDate;
    final num updUserId;
    final DateTime updDate;
    final String recId;
    final List<dynamic> deliveryClient;

    Area({
        this.areaId,
        this.areaName,
        this.areaNameEn,
        this.fkStoreId,
        this.deliveryAmount,
        this.insUserId,
        this.insDate,
        this.updUserId,
        this.updDate,
        this.recId,
        this.deliveryClient,
    });

    factory Area.fromRawJson(String str) => Area.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Area.fromJson(Map<String, dynamic> json) => Area(
        areaId: json["areaId"] == null ? null : json["areaId"],
        areaName: json["areaName"] == null ? null : json["areaName"],
        areaNameEn: json["areaNameEn"] == null ? null : json["areaNameEn"],
        fkStoreId: json["fkStoreId"] == null ? null : json["fkStoreId"],
        deliveryAmount: json["deliveryAmount"] == null ? null : json["deliveryAmount"],
        insUserId: json["insUserId"] == null ? null : json["insUserId"],
        insDate: json["insDate"] == null ? null : DateTime.parse(json["insDate"]),
        updUserId: json["updUserId"] == null ? null : json["updUserId"],
        updDate: json["updDate"] == null ? null : DateTime.parse(json["updDate"]),
        recId: json["recId"] == null ? null : json["recId"],
        deliveryClient: json["deliveryClient"] == null ? null : List<dynamic>.from(json["deliveryClient"].map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "areaId": areaId == null ? null : areaId,
        "areaName": areaName == null ? null : areaName,
        "areaNameEn": areaNameEn == null ? null : areaNameEn,
        "fkStoreId": fkStoreId == null ? null : fkStoreId,
        "deliveryAmount": deliveryAmount == null ? null : deliveryAmount,
        "insUserId": insUserId == null ? null : insUserId,
        "insDate": insDate == null ? null : insDate.toIso8601String(),
        "updUserId": updUserId == null ? null : updUserId,
        "updDate": updDate == null ? null : updDate.toIso8601String(),
        "recId": recId == null ? null : recId,
        "deliveryClient": deliveryClient == null ? null : List<dynamic>.from(deliveryClient.map((x) => x)),
    };
}
