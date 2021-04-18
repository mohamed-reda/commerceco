import 'package:flutter/material.dart';

import '../../../../extensions/center_widget.dart';
import '../../../../extensions/extensions.dart';
import '../../../../extensions/padding_widget.dart';
import '../../../../ui/localization/Language.dart';
import '../../../../utils/abdo_util/back_button.dart';
import '../../../../utils/abdo_util/customRaisedButton.dart';
import '../../../../utils/abdo_util/custom_text_filed.dart';
import '../../../../widgets/app_background.dart';
import 'change_password_bloc.dart';

class ChangePassword extends StatefulWidget {
  @override
  _ChangePasswordState createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  final _oldPasswordController = TextEditingController();
  final _newPasswordController = TextEditingController();
  ChangePasswordBloc _changePasswordBloc = ChangePasswordBloc();

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: <Widget>[
          AppBackground(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              BackButtonSafe(),
              Flexible(
                child: ListView(
                  children: <Widget>[
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.28,
                    ),
                    StreamBuilder<String>(
                        stream: _changePasswordBloc.oldPassword,
                        builder: (BuildContext context,
                            AsyncSnapshot<String> snapshot) {
                          return CustomTextFiled(
                            'Old-${Language.myLanguage().password}',
                            _oldPasswordController,
                            textChanged: _changePasswordBloc.oldPasswordChanged,
                            error: snapshot.error,
                            enable: _changePasswordBloc.enableTextFiled,
                            obscureText: _changePasswordBloc.obscureOldPassword,
                            obscureChanged:
                                _changePasswordBloc.obscureOldPasswordChanged,
                          ).addPaddingAll(16);
                        }),
                    StreamBuilder<String>(
                        stream: _changePasswordBloc.newPassword,
                        builder: (BuildContext context,
                            AsyncSnapshot<String> snapshot) {
                          return CustomTextFiled(
                            'New-${Language.myLanguage().password}',
                            _newPasswordController,
                            textChanged: _changePasswordBloc.newPasswordChanged,
                            error: snapshot.error,
                            enable: _changePasswordBloc.enableTextFiled,
                            obscureText: _changePasswordBloc.obscureNewPassword,
                            obscureChanged:
                                _changePasswordBloc.obscureNewPasswordChanged,
                          ).addPaddingAll(16);
                        }),
                    StreamBuilder<btnState>(
                        stream: _changePasswordBloc.btnStateStream,
                        builder: (context, snapshot) {
                          if (!snapshot.hasError && snapshot.hasData) {
                            if (snapshot.data == btnState.SHOW)
                              return CustomSubmitRaisedButton(
                                  Language.myLanguage().changePassword,
                                  () => _changePasswordBloc.doChangePassword(
                                      _oldPasswordController,
                                      _newPasswordController,
                                      context));
                            if (snapshot.data == btnState.LOADING)
                              return CircularProgressIndicator().setCenter();
                          }
                          return CustomSubmitRaisedButton(
                              Language.myLanguage().changePassword, null);
                        }),
                    SizedBox(height: 300),
                  ],
                ).setCenter(),
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _oldPasswordController?.dispose();
    _newPasswordController?.dispose();
    _changePasswordBloc?.dispose();
    super.dispose();
  }
}
