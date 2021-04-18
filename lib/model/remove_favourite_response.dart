
import 'dart:convert';

class RemoveFavouriteResponse {
  final bool hasErrors;
  final num statusCode;
  final String message;
  final bool data;

  RemoveFavouriteResponse({
    this.hasErrors,
    this.statusCode,
    this.message,
    this.data,
  });

  factory RemoveFavouriteResponse.fromRawJson(String str) => RemoveFavouriteResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory RemoveFavouriteResponse.fromJson(Map<String, dynamic> json) => RemoveFavouriteResponse(
    hasErrors: json["hasErrors"] == null ? null : json["hasErrors"],
    statusCode: json["statusCode"]== null ? null :json["statusCode"],
    message: json["message"] == null ? null : json["message"],
    data: json["data"] == null ? null : json["data"],
  );

  Map<String, dynamic> toJson() => {
    "hasErrors": hasErrors == null ? null : hasErrors,
    "statusCode": statusCode== null ? null : statusCode,
    "message": message == null ? null : message,
    "data": data == null ? null : data,
  };
}
