// To parse this JSON data, do
//
//     final getUserData = getUserDataFromJson(jsonString);

import 'dart:convert';

class GetUserDataResponse {
    final bool hasErrors;
    final dynamic statusCode;
    final dynamic message;
    final UserResponse data;

    GetUserDataResponse({
        this.hasErrors,
        this.statusCode,
        this.message,
        this.data,
    });

    factory GetUserDataResponse.fromRawJson(String str) => GetUserDataResponse.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory GetUserDataResponse.fromJson(Map<String, dynamic> json) => GetUserDataResponse(
        hasErrors: json["hasErrors"] == null ? null : json["hasErrors"],
        statusCode: json["statusCode"],
        message: json["message"],
        data: json["data"] == null ? null : UserResponse.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "hasErrors": hasErrors == null ? null : hasErrors,
        "statusCode": statusCode,
        "message": message,
        "data": data == null ? null : data.toJson(),
    };
}

class UserResponse {
    final num delClientId;
    final String clientName;
    final String clientNameEn;
    final dynamic fkMemberShipId;
    final num fkAreaId;
    final String phone1;
    final dynamic phone2;
    final dynamic phone3;
    final String address;
    final String floor;
    final String apartment;
    final String specialMark;
    final dynamic printNotes;
    final dynamic adminNotes;
    final bool wholeSale;
    final bool posdiscountType;
    final num posdiscount;
    final num salesBalance;
    final num pointsBalance;
    final String insUserId;
    final DateTime insDate;
    final dynamic updUserId;
    final DateTime updDate;
    final String recId;
    final String email;
    final dynamic fkAccNo;
    final dynamic password;
    final String locationAddress;
    final String houseNum;
    final dynamic fkArea;

    UserResponse({
        this.delClientId,
        this.clientName,
        this.clientNameEn,
        this.fkMemberShipId,
        this.fkAreaId,
        this.phone1,
        this.phone2,
        this.phone3,
        this.address,
        this.floor,
        this.apartment,
        this.specialMark,
        this.printNotes,
        this.adminNotes,
        this.wholeSale,
        this.posdiscountType,
        this.posdiscount,
        this.salesBalance,
        this.pointsBalance,
        this.insUserId,
        this.insDate,
        this.updUserId,
        this.updDate,
        this.recId,
        this.email,
        this.fkAccNo,
        this.password,
        this.locationAddress,
        this.houseNum,
        this.fkArea,
    });

    factory UserResponse.fromRawJson(String str) => UserResponse.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory UserResponse.fromJson(Map<String, dynamic> json) => UserResponse(
        delClientId: json["delClientId"] == null ? null : json["delClientId"],
        clientName: json["clientName"] == null ? null : json["clientName"],
        clientNameEn: json["clientNameEn"] == null ? null : json["clientNameEn"],
        fkMemberShipId: json["fkMemberShipId"],
        fkAreaId: json["fkAreaId"] == null ? null : json["fkAreaId"],
        phone1: json["phone1"] == null ? null : json["phone1"],
        phone2: json["phone2"],
        phone3: json["phone3"],
        address: json["address"] == null ? null : json["address"],
        floor: json["floor"] == null ? null : json["floor"],
        apartment: json["apartment"] == null ? null : json["apartment"],
        specialMark: json["specialMark"] == null ? null : json["specialMark"],
        printNotes: json["printNotes"],
        adminNotes: json["adminNotes"],
        wholeSale: json["wholeSale"] == null ? null : json["wholeSale"],
        posdiscountType: json["posdiscountType"] == null ? null : json["posdiscountType"],
        posdiscount: json["posdiscount"] == null ? null : json["posdiscount"],
        salesBalance: json["salesBalance"] == null ? null : json["salesBalance"],
        pointsBalance: json["pointsBalance"] == null ? null : json["pointsBalance"],
        insUserId: json["insUserId"] == null ? null : json["insUserId"],
        insDate: json["insDate"] == null ? null : DateTime.parse(json["insDate"]),
        updUserId: json["updUserId"],
        updDate: json["updDate"] == null ? null : DateTime.parse(json["updDate"]),
        recId: json["recId"] == null ? null : json["recId"],
        email: json["email"] == null ? null : json["email"],
        fkAccNo: json["fkAccNo"],
        password: json["password"],
        locationAddress: json["locationAddress"] == null ? null : json["locationAddress"],
        houseNum: json["houseNum"] == null ? null : json["houseNum"],
        fkArea: json["fkArea"],
    );

    Map<String, dynamic> toJson() => {
        "delClientId": delClientId == null ? null : delClientId,
        "clientName": clientName == null ? null : clientName,
        "clientNameEn": clientNameEn == null ? null : clientNameEn,
        "fkMemberShipId": fkMemberShipId,
        "fkAreaId": fkAreaId == null ? null : fkAreaId,
        "phone1": phone1 == null ? null : phone1,
        "phone2": phone2,
        "phone3": phone3,
        "address": address == null ? null : address,
        "floor": floor == null ? null : floor,
        "apartment": apartment == null ? null : apartment,
        "specialMark": specialMark == null ? null : specialMark,
        "printNotes": printNotes,
        "adminNotes": adminNotes,
        "wholeSale": wholeSale == null ? null : wholeSale,
        "posdiscountType": posdiscountType == null ? null : posdiscountType,
        "posdiscount": posdiscount == null ? null : posdiscount,
        "salesBalance": salesBalance == null ? null : salesBalance,
        "pointsBalance": pointsBalance == null ? null : pointsBalance,
        "insUserId": insUserId == null ? null : insUserId,
        "insDate": insDate == null ? null : insDate.toIso8601String(),
        "updUserId": updUserId,
        "updDate": updDate == null ? null : updDate.toIso8601String(),
        "recId": recId == null ? null : recId,
        "email": email == null ? null : email,
        "fkAccNo": fkAccNo,
        "password": password,
        "locationAddress": locationAddress == null ? null : locationAddress,
        "houseNum": houseNum == null ? null : houseNum,
        "fkArea": fkArea,
    };
}
