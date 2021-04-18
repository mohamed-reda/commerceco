//import 'dart:convert';
//
//import 'package:elgelany/model/new_model/cart_items_response.dart';
//
//class ModelOfLocalCart {
//  List<AllProduct> cartList;
//  double subTotal;
//  double discound;
//
//
//  factory ModelOfLocalCart.fromRawJson(String str) =>
//      ModelOfLocalCart.fromJson(json.decode(str));
//
//  String toRawJson() => json.encode(toJson());
//
//  factory ModelOfLocalCart.fromJson(Map<String, dynamic> json) =>
//      ModelOfLocalCart(
//        hasErrors: json["hasErrors"] == null ? null : json["hasErrors"],
//        statusCode: json["statusCode"] == null ? null : json["statusCode"],
//        message: json["message"] == null ? null : json["message"],
//        data:
//        json["data"] == null ? null : ModelOfLocalCart.fromJson(json["data"]),
//      );
//
//  Map<String, dynamic> toJson() => {
//    "hasErrors": hasErrors == null ? null : hasErrors,
//    "statusCode": statusCode == null ? null : statusCode,
//    "message": message == null ? null : message,
//    "data": data == null ? null : data.toJson(),
//  };
//}
//}
