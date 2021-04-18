import 'package:shared_preferences/shared_preferences.dart';

import '../Constants/Constants.dart';
import '../model/navigate_models/cart_models/data_of_cart_repo.dart';
import '../model/user/user_data.dart';

class SharedPreferencesDomain {
  SharedPreferences _prefs;

  SharedPreferences get prefs {
    if (_prefs == null) {
      SharedPreferences.getInstance().then((v) {
        _prefs = v;
        return _prefs;
      });
    }
    return _prefs;
  }

  //----------------------- get ,set the user data-----------------------------
  SharedPreferencesDomain() {
    SharedPreferences.getInstance().then((v) {
      _prefs = v;
    });
  }

  ///save
  saveUserToken(String token) {
    _prefs.setString(Constants.userToken, token);
  }

  saveUserId(num userId) {
    _prefs.setDouble(Constants.userID, userId);
  }

  //this one that i use at login
  saveUserData(UserData userData) {
    try {
      String userDataAsJson = userData.toRawJson();
      _prefs.setString(Constants.userData, userDataAsJson);
      _prefs.setInt(Constants.userID, userData.delClientId);
    } catch (ex) {
      print(ex.toString());
    }
  }

  ///get
  UserData getJustUser() {
    try {
      return UserData.fromRawJson(_prefs.getString(Constants.userData));
    } catch (e) {
      return null;
    }
  }

  int getJustUserID() {
    try {
      return _prefs.getInt(Constants.userID);
    } catch (e) {
      return null;
    }
  }

  String getUserToken() {
    try {
      return _prefs.getString(Constants.userToken);
    } catch (e) {
      return null;
    }
  }

  ///clear
  clearSharedPreferences() async {
    _prefs = await SharedPreferences.getInstance();
    _prefs.clear();
  }

  // void deleteTokenAndUser() {
  //
  //   _prefs.setString(Constants.userToken, null);
  //   _prefs.setString(Constants.userData, null);
  // }

//----------------------- get ,set the Cart data-----------------------------
  saveCartData(DataAtCartRes cartData) {
    String cartDataAsJson = cartData.toRawJson();
    _prefs.setString(Constants.cartData, cartDataAsJson);
  }

//  ModelOfLocalCart
  DataAtCartRes getCartData() {
    if (_prefs == null) {
      SharedPreferences.getInstance().then((v) {
        _prefs = v;
      });
//      print('trueeeee');
    }
    try {
//      print('falseeeeee');
      return DataAtCartRes.fromRawJson(_prefs.getString(Constants.cartData)) ??
          DataAtCartRes();

//        prefs.getString(Constants.cartData);
    } catch (e) {
      return DataAtCartRes();
    }
  }

//  saveItemsAtCart(List<AllProduct> allProducts) {
//    String cart = allProducts.toRawJson();
//    prefs.setString(Constants.cartData, cart);
//  }
}
