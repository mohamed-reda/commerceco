import 'dart:convert';

import '../../../model/new_model/cart_items_response.dart';

class DataAtCartRes {
  List<AllProduct> allProducts;
  num totalBeforeDiscount;
  num discount;
  num totalAfterDiscount;
  num delivery;

//local
  DataAtCartRes({
    this.allProducts = const [],
    this.totalBeforeDiscount = 0,
    this.discount = 0,
    this.totalAfterDiscount = 0,
    this.delivery = 0,
  });

//  DataAtCartRes({
//    this.allProducts,
//    this.totalBeforeDiscount,
//    this.discount,
//    this.totalAfterDiscount,
//    this.delivery,
//  });

  factory DataAtCartRes.fromRawJson(String str) =>
      DataAtCartRes.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory DataAtCartRes.fromJson(Map<String, dynamic> json) => DataAtCartRes(
        allProducts: json["allProducts"] == null
            ? null
            : List<AllProduct>.from(
                json["allProducts"].map((x) => AllProduct.fromJson(x))),
        totalBeforeDiscount: json["totalBeforeDiscount"] == null
            ? null
            : json["totalBeforeDiscount"],
        discount: json["discount"] == null ? null : json["discount"],
        totalAfterDiscount: json["totalAfterDiscount"] == null
            ? null
            : json["totalAfterDiscount"],
        delivery: json["delivery"] == null ? null : json["delivery"],
      );

  Map<String, dynamic> toJson() => {
        "allProducts": allProducts == null
            ? null
            : List<dynamic>.from(allProducts.map((x) => x.toJson())),
        "totalBeforeDiscount":
            totalBeforeDiscount == null ? null : totalBeforeDiscount,
        "discount": discount == null ? null : discount,
        "totalAfterDiscount":
            totalAfterDiscount == null ? null : totalAfterDiscount,
        "delivery": delivery == null ? null : delivery,
      };
}
