import 'package:flutter/material.dart';

import '../../home.dart';

class ProviderOfLogin with ChangeNotifier {
  bool _showPassword = true;

  bool get showPassword => _showPassword;

  changeShowPassword() {
    _showPassword = !_showPassword;
    notify();
  }

  notify() {
    notifyListeners();
  }

  login(String phone, String password, {BuildContext context}) async {
//    UserLogin _user = UserLogin(phone, password);
//    AccountRepository accountRepository = AccountRepository();
//    ResponseApi<NewUserResponseModel> dataOrError =
//        await accountRepository.doLogin(_user);
//
//    if (dataOrError.status == ApiStatus.SUCCESS) {
////      print('SUCCESS${dataOrError.data.toJson()}');
//      //save
//
//      NewUserResponseModel userResponse = dataOrError.data;
//
//      SharedPreferencesDomain sharedPreferences =
//          locator.get<SharedPreferencesDomain>();
//      MyApp.userID = userResponse.data.userData.delClientId;
//      sharedPreferences.saveUserData(userResponse.data.userData);
//      MyApp.token = userResponse.data.token.toString();
//      sharedPreferences.saveUserToken(MyApp.token);
//      Navigator.of(context).pushReplacement(
//          MaterialPageRoute(builder: (context) => StartScreen()));
//    }
    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (context) => MyHomePage()));
//    else
//      print('error${dataOrError.error}');
  }
}
