import '../BaseModel.dart';
import 'user_data.dart';

class UserResponseModel implements BaseModel {
  UserData userData;
  String token;

  UserResponseModel({this.userData, this.token});

  UserResponseModel.fromJson(Map<String, dynamic> json) {
    userData = json['userData'] != null
        ?  UserData.fromJson(json['userData'])
        : null;
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.userData != null) {
      data['userData'] = this.userData.toJson();
    }
    data['token'] = this.token;
    return data;
  }

  @override
  UserResponseModel fromJson(Map<String, dynamic> json) {
    return UserResponseModel.fromJson(json);
  }
}
