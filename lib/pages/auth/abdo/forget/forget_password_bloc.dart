import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../utils/Validator.dart';
import '../../../../utils/abdo_util/base_bloc.dart';
import '../../../../utils/abdo_util/show_dialog.dart';
import '../validators_Stream.dart';

enum btnState { HIDE, SHOW, LOADING }

class ForgetPasswordBloc with ValidatorsStream implements BaseBloc {
  btnState _lastBtnState = btnState.HIDE;
  String _lastEmail = '';
  bool _enableTextFiled = true;

  ForgetPasswordBloc() {
    _btnStateController.add(btnState.HIDE);
    _emailController.stream.listen((email) {
      btnStateChanged(
          (Validators.isValidEmail(email)) ? btnState.SHOW : btnState.HIDE);
    });
  }

  final _emailController = StreamController<String>.broadcast();

  Function(String) get notifyEmail => _emailController.sink.add;

  void emailChanged(String newEmail) async {
    if (newEmail != _lastEmail) {
      _emailController.sink.add(newEmail ?? '');
      _lastEmail = newEmail;
    }
  }

  Stream<String> get email => _emailController.stream.transform(emailValidator);

  bool get enableTextFiled => _enableTextFiled;

  final _btnStateController = StreamController<btnState>.broadcast();

  Stream<btnState> get btnStateStream => _btnStateController.stream;

  void btnStateChanged(btnState newState) async {
    if (newState != _lastBtnState) {
      _btnStateController.sink.add(newState ?? btnState.HIDE);
      _lastBtnState = newState;
    }
  }

  void doForget(TextEditingController controller, BuildContext context) async {
//    await setEnableTextFiled(false, controller.text);
//    btnStateChanged(btnState.LOADING);
//    AccountRepository accountRepository = AccountRepository();
//    var dataOrError = await accountRepository.doForgetPassword(controller.text);
//    if (dataOrError.status == ApiStatus.SUCCESS) {
//      _showMessageInDialog('Check Your Email :)', context);
//      controller.text = '';
//    } else
//      _showMessageInDialog('Email Not Found', context);
//    await setEnableTextFiled(true, controller.text);
  }

  Future<void> setEnableTextFiled(bool value, String textToNotifyEmail) async {
    _enableTextFiled = value;
    await notifyEmail(textToNotifyEmail);
  }

  @override
  void dispose() {
    _emailController?.close();
    _btnStateController?.close();
  }

  void _showMessageInDialog(String data, BuildContext context) {
    showMaterialDialog(context, content: Text(data), actions: [
      FlatButton(
          onPressed: () => Navigator.of(context).pop(), child: Text("OK"))
    ]);
  }
}
