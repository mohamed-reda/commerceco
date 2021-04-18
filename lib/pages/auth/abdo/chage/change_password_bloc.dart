import 'dart:async';

import 'package:flutter/material.dart';

import '../../../../domain/domain_shared_preferences.dart';
import '../../../../utils/Validator.dart';
import '../../../../utils/abdo_util/base_bloc.dart';
import '../../../../utils/abdo_util/show_dialog.dart';
import '../../../../utils/locator.dart';
import '../validators_Stream.dart';
import 'change_password_model.dart';

enum btnState { HIDE, SHOW, LOADING }

class ChangePasswordBloc with ValidatorsStream implements BaseBloc {
  SharedPreferencesDomain sharedPreferences =
      locator.get<SharedPreferencesDomain>();

//  String token;
//
////      "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJFbXBJRCI6IjM0NTM0NTMzMzAiLCJleHAiOjE1ODUzMTE2ODAsImlzcyI6IkZla3JhU29mdC5jb20iLCJhdWQiOiJGZWtyYVNvZnQuY29tIn0.pzSfMxSxWiQSICOZiFhLYbU-GUsfCczA2UtWG456bxk";
//  int _userId;
  btnState _lastBtnState = btnState.HIDE;
  String _lastOldPassword = '';
  String _lastNewPassword = '';
  bool _enableTextFiled = true;
  bool _obscureOldPassword = true;
  bool _obscureNewPassword = true;

  ChangePasswordBloc() {
    _btnStateController.add(btnState.HIDE);
    _oldPasswordController.stream.listen((oldPassword) {
      _lastOldPassword = oldPassword;
      btnStateChanged((Validators.isValidPassword(oldPassword) &&
              Validators.isValidPassword(_lastNewPassword))
          ? btnState.SHOW
          : btnState.HIDE);
    });
    _newPasswordController.stream.listen((newPassword) {
      _lastNewPassword = newPassword;
      btnStateChanged((Validators.isValidPassword(newPassword) &&
              Validators.isValidPassword(_lastOldPassword))
          ? btnState.SHOW
          : btnState.HIDE);
    });
  }

  bool get enableTextFiled => _enableTextFiled;

  bool get obscureOldPassword => _obscureOldPassword;

  bool get obscureNewPassword => _obscureNewPassword;

  final _oldPasswordController = StreamController<String>.broadcast();

  Stream<String> get oldPassword =>
      _oldPasswordController.stream.transform(passwordValidator);

  Function(String) get notifyOldPassword => _oldPasswordController.sink.add;

  final _newPasswordController = StreamController<String>.broadcast();

  Stream<String> get newPassword =>
      _newPasswordController.stream.transform(passwordValidator);

  Function(String) get notifyNewPassword => _newPasswordController.sink.add;

  final _btnStateController = StreamController<btnState>.broadcast();

  Stream<btnState> get btnStateStream => _btnStateController.stream;

  void btnStateChanged(btnState newState) async {
    if (newState != _lastBtnState) {
      _btnStateController.sink.add(newState ?? btnState.HIDE);
      _lastBtnState = newState;
    }
  }

  void oldPasswordChanged(String newOldPassword) async {
    if (newOldPassword != _lastOldPassword) {
      _oldPasswordController.sink.add(newOldPassword ?? '');
      _lastOldPassword = newOldPassword;
    }
  }

  void newPasswordChanged(String newNewPassword) async {
    if (newNewPassword != _lastNewPassword) {
      _newPasswordController.sink.add(newNewPassword ?? '');
      _lastNewPassword = newNewPassword;
    }
  }

  void obscureOldPasswordChanged() {
    _obscureOldPassword = !_obscureOldPassword;
    //just work around TextFiled of Password to show and hide password
    _oldPasswordController.sink.add(_lastOldPassword ?? '');
    //also work around to solve null problem of {passwordController.value}
  }

  void obscureNewPasswordChanged() {
    _obscureNewPassword = !_obscureNewPassword;
    _newPasswordController.sink.add(_lastNewPassword ?? '');
  }

  void doChangePassword(TextEditingController oldPasswordController,
      TextEditingController newPasswordController, BuildContext context) async {
    await setEnableTextFiled(
        false, oldPasswordController.text, newPasswordController.text);
    btnStateChanged(btnState.LOADING);

    ChangePasswordModel body = ChangePasswordModel(
        userId: sharedPreferences.getJustUser().delClientId,
        oldPassword: oldPasswordController.text,
        newPassword: newPasswordController.text);
//    print(body.toRawJson());
//    print(await sharedPreferences.getUserToken());
//    AccountRepository accountRepository = AccountRepository();

//    var dataOrError = await accountRepository.doChangePassword(
//        body, await sharedPreferences.getUserToken());
//    if (dataOrError.status == ApiStatus.SUCCESS) {
////      print(dataOrError.data.toRawJson());
//      _showMessageInDialog('Password Changed Successful.', context);
//      oldPasswordController.text = '';
//      newPasswordController.text = '';
//    } else {
////      print('passss ' + dataOrError.error);
//      _showMessageInDialog('Old Password Is Wrong.', context);
//    }
//    var data = await http.post(
//        'http://fekrasoft-001-site20.gtempurl.com/api/Account/changePassword',
//        headers: {
//          "Authorization": "Bearer $token",
//          "Content-Type": "application/json"
//        },
//        body: body.toString());
//    var response = ForgotPasswordResponse.fromJson(json.decode(data.body));
    ///   if (response.data == true) {
    //response.statusCode == 200 &&
//      _showMessageInDialog('Password Changed Successful.', context);
//      oldPasswordController.text = '';
//      newPasswordController.text = '';
//    }
//    else _showMessageInDialog('Old Password Is Wrong.', context);

    await setEnableTextFiled(
        true, oldPasswordController.text, newPasswordController.text);
  }

  Future<void> setEnableTextFiled(bool value, String textToNotifyOldPassword,
      String textToNotifyNewPassword) async {
    _enableTextFiled = value;
    await notifyOldPassword(textToNotifyOldPassword);
    await notifyNewPassword(textToNotifyNewPassword);
  }

  void _showMessageInDialog(String data, BuildContext context) {
    showMaterialDialog(context, content: Text(data), actions: [
      FlatButton(
          onPressed: () => Navigator.of(context).pop(), child: Text("OK"))
    ]);
  }

  @override
  void dispose() {
    _oldPasswordController?.close();
    _newPasswordController?.close();
    _btnStateController?.close();
  }
}
//{hasErrors: false, statusCode: null, message: null, data:
// {userData: {delClientId: 3453453303, clientName: محمد ,
//  clientNameEn: Mohamed Reda, fkMemberShipId: null, fkAreaId: 7,
//      phone1: 01286140604, phone2: null, phone3: null, address: 9 Mahmoud hazzien,
//          floor: 2, apartment: 2, specialMark: mi, printNotes: null, adminNotes: null,
//            wholeSale: false, posdiscountType: false, posdiscount: 0.0, salesBalance: 0.0, pointsBalance: 0.0, insUserId: 0, insDate: 2019-09-03T08:00:39.457, updUserId: null, updDate: null, recId: AAAAAAATFG8=, email: mohamed.reda.007007@gmail.com, fkAccNo: null, password: a9d7652fe3e03e42fc3aad6069e9a3923ae3d7c928fd1fe125125b7f1fbe8e85, locationAddress: null, houseNum: null, fkArea: null}, token: eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJFbXBJRCI6IjM0NTM0NTMzMDMiLCJleHAiOjE1ODU4NDA5MTAsImlzcyI6IkZla3JhU29mdC5jb20iLCJhdWQiOiJGZWtyYVNvZnQuY29tIn0.c2x-JaErUuPawCo7yq5YsWxZONUcDi5AKStGNwUE6cs}}
