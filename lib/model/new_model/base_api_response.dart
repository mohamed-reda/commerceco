
import 'dart:convert';

class BaseApiResponse {
  final bool hasErrors;
  final num statusCode;
  final String message;
  final bool data;

  BaseApiResponse({
    this.hasErrors,
    this.statusCode,
    this.message,
    this.data,
  });

  factory BaseApiResponse.fromRawJson(String str) => BaseApiResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory BaseApiResponse.fromJson(Map<String, dynamic> json) => BaseApiResponse(
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
