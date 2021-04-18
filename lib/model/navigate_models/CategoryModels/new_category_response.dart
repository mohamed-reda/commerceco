import 'dart:convert';

class CategoryResponse {
  final bool hasErrors;
  final dynamic statusCode;
  final dynamic message;
  final List<CategoryData> data;

  CategoryResponse({
    this.hasErrors,
    this.statusCode,
    this.message,
    this.data,
  });

  factory CategoryResponse.fromRawJson(String str) => CategoryResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CategoryResponse.fromJson(Map<String, dynamic> json) => CategoryResponse(
    hasErrors: json["hasErrors"] == null ? null : json["hasErrors"],
    statusCode: json["statusCode"],
    message: json["message"],
    data: json["data"] == null ? null : List<CategoryData>.from(json["data"].map((x) => CategoryData.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "hasErrors": hasErrors == null ? null : hasErrors,
    "statusCode": statusCode,
    "message": message,
    "data": data == null ? null : List<dynamic>.from(data.map((x) => x.toJson())),
  };
}

class CategoryData {
  final bool hasSubCategories;
  final int categoryId;
  final String categoryName;
  final String categoryNameEng;
  final dynamic parentId;
  final dynamic fkShopId;
  final String insUserId;
  final String insDate;
  final String updUserId;
  final String updDate;
  final String recId;
  final List<dynamic> items;

  CategoryData({
    this.hasSubCategories,
    this.categoryId,
    this.categoryName,
    this.categoryNameEng,
    this.parentId,
    this.fkShopId,
    this.insUserId,
    this.insDate,
    this.updUserId,
    this.updDate,
    this.recId,
    this.items,
  });

  factory CategoryData.fromRawJson(String str) => CategoryData.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CategoryData.fromJson(Map<String, dynamic> json) => CategoryData(
    hasSubCategories: json["hasSubCategories"] == null ? null : json["hasSubCategories"],
    categoryId: json["categoryId"] == null ? null : json["categoryId"],
    categoryName: json["categoryName"] == null ? null : json["categoryName"],
    categoryNameEng: json["categoryNameEng"] == null ? null : json["categoryNameEng"],
    parentId: json["parentId"],
    fkShopId: json["fkShopId"],
    insUserId: json["insUserId"] == null ? null : json["insUserId"],
    insDate: json["insDate"] == null ? null : json["insDate"],
    updUserId: json["updUserId"] == null ? null : json["updUserId"],
    updDate: json["updDate"] == null ? null : json["updDate"],
    recId: json["recId"] == null ? null : json["recId"],
    items: json["items"] == null ? null : List<dynamic>.from(json["items"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "hasSubCategories": hasSubCategories == null ? null : hasSubCategories,
    "categoryId": categoryId == null ? null : categoryId,
    "categoryName": categoryName == null ? null : categoryName,
    "categoryNameEng": categoryNameEng == null ? null : categoryNameEng,
    "parentId": parentId,
    "fkShopId": fkShopId,
    "insUserId": insUserId == null ? null : insUserId,
    "insDate": insDate == null ? null : insDate,
    "updUserId": updUserId == null ? null : updUserId,
    "updDate": updDate == null ? null : updDate,
    "recId": recId == null ? null : recId,
    "items": items == null ? null : List<dynamic>.from(items.map((x) => x)),
  };
}