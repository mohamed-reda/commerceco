import 'dart:convert';

class ForgotPasswordResponse {
  bool hasErrors;
  num statusCode;
  String message;
  bool data;

  ForgotPasswordResponse(
      {this.hasErrors, this.statusCode, this.message, this.data});

  ForgotPasswordResponse.fromJson(Map<String, dynamic> json) {
    hasErrors = json['hasErrors'] ?? false;
    statusCode = json['statusCode'] ?? 400;
    message = json['message'] ?? '';
    data = json['data'] ?? false;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['hasErrors'] = this.hasErrors;
    data['statusCode'] = this.statusCode;
    data['message'] = this.message;
    data['data'] = this.data;
    return data;
  }

  ForgotPasswordResponse fromJson(String source) {
    return ForgotPasswordResponse.fromJson((json.decode(source)));
  }
}
