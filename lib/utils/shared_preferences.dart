import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

import '../Constants/Constants.dart';
import '../model/user/user_response_model.dart';

class SharedPreferencess {
  static saveString(String _key, String _value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(_key, _value);
  }

  static Future<String> getString(String _key) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String shardString = prefs.getString(_key);
    return shardString;
  }

  // set user data
  static saveUserData(UserResponseModel model) async {
    try {
      String userDataAsJson = json.encode(model.toJson());
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString(Constants.userData, userDataAsJson);
    } catch (ex, st) {
      print(ex.toString());
    }
  }

  // get user data
  static Future<UserResponseModel> getUserData() async {
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      if (prefs.containsKey(Constants.userData)) {
        var userDataAsJson = await prefs.getString(Constants.userData);
        var userDataASMap = json.decode(userDataAsJson);
        return UserResponseModel.fromJson(userDataASMap);
      }
    } catch (ex, st) {
      print(ex.toString());
    }
    return null;
  }

  //delete all data when user logout
  static clearSharedPreferences() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.clear();
  }
}
