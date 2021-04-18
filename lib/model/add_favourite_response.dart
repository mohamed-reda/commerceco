
import 'dart:convert';

class AddFavouriteResponse {
    final bool hasErrors;
    final dynamic statusCode;
    final dynamic message;
    final Data data;

    AddFavouriteResponse({
        this.hasErrors,
        this.statusCode,
        this.message,
        this.data,
    });

    factory AddFavouriteResponse.fromRawJson(String str) => AddFavouriteResponse.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory AddFavouriteResponse.fromJson(Map<String, dynamic> json) => AddFavouriteResponse(
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
    final int id;
    final int fkItemId;
    final int fkItemPackageId;
    final int fkDeliveryClientId;
    final String insDateTime;
    final dynamic fkItem;

    Data({
        this.id,
        this.fkItemId,
        this.fkItemPackageId,
        this.fkDeliveryClientId,
        this.insDateTime,
        this.fkItem,
    });

    factory Data.fromRawJson(String str) => Data.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["id"] == null ? null : json["id"],
        fkItemId: json["fkItemId"] == null ? null : json["fkItemId"],
        fkItemPackageId: json["fkItemPackageId"] == null ? null : json["fkItemPackageId"],
        fkDeliveryClientId: json["fkDeliveryClientId"] == null ? null : json["fkDeliveryClientId"],
        insDateTime: json["insDateTime"] == null ? null : json["insDateTime"],
        fkItem: json["fkItem"],
    );

    Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "fkItemId": fkItemId == null ? null : fkItemId,
        "fkItemPackageId": fkItemPackageId == null ? null : fkItemPackageId,
        "fkDeliveryClientId": fkDeliveryClientId == null ? null : fkDeliveryClientId,
        "insDateTime": insDateTime == null ? null : insDateTime,
        "fkItem": fkItem,
    };
}
