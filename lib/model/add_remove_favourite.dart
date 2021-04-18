import 'dart:convert';

import 'package:flutter/cupertino.dart';

class AddRemoveFavouriteModel {
    final int fkItemId;
    final int fkItemPackageId;
    final int fkDeliveryClientId;

    AddRemoveFavouriteModel({
      @required  this.fkItemId,
       @required this.fkItemPackageId,
       @required this.fkDeliveryClientId,
    });

    factory AddRemoveFavouriteModel.fromRawJson(String str) => AddRemoveFavouriteModel.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory AddRemoveFavouriteModel.fromJson(Map<String, dynamic> json) => AddRemoveFavouriteModel(
        fkItemId: json["fkItemId"] == null ? null : json["fkItemId"],
        fkItemPackageId: json["fkItemPackageId"] == null ? null : json["fkItemPackageId"],
        fkDeliveryClientId: json["fkDeliveryClientId"] == null ? null : json["fkDeliveryClientId"],
    );

    Map<String, dynamic> toJson() => {
        "fkItemId": fkItemId == null ? null : fkItemId,
        "fkItemPackageId": fkItemPackageId == null ? null : fkItemPackageId,
        "fkDeliveryClientId": fkDeliveryClientId == null ? null : fkDeliveryClientId,
    };
}
