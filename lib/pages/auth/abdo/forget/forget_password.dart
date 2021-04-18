import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../extensions/extensions.dart';
import '../../../../ui/localization/Language.dart';
import '../../../../utils/abdo_util/back_button.dart';
import '../../../../utils/abdo_util/customRaisedButton.dart';
import '../../../../utils/abdo_util/custom_text_filed.dart';
import '../../../../widgets/app_background.dart';
import 'forget_password_bloc.dart';

class ForgetPassword extends StatefulWidget {
  @override
  _ForgetPasswordState createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  final _emailController = TextEditingController();
  ForgetPasswordBloc _forgetPasswordBloc = ForgetPasswordBloc();

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
                        stream: _forgetPasswordBloc.email,
                        builder: (BuildContext context,
                            AsyncSnapshot<String> snapshot) {
                          return CustomTextFiled(
                            Language.myLanguage().email,
                            _emailController,
                            textChanged: _forgetPasswordBloc.emailChanged,
                            error: snapshot.error,
                            enable: _forgetPasswordBloc.enableTextFiled,
                          ).addPaddingAll(16);
                        }),
                    StreamBuilder<btnState>(
                        stream: _forgetPasswordBloc.btnStateStream,
                        builder: (context, snapshot) {
                          if (!snapshot.hasError && snapshot.hasData) {
                            if (snapshot.data == btnState.SHOW)
                              return CustomSubmitRaisedButton(
                                  Language.myLanguage().forgetPassword,
                                  () => _forgetPasswordBloc.doForget(
                                      _emailController, context));
                            if (snapshot.data == btnState.LOADING)
                              return CircularProgressIndicator().setCenter();
                          }
                          return CustomSubmitRaisedButton(
                              Language.myLanguage().forgetPassword, null);
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
    _emailController.dispose();
    _forgetPasswordBloc.dispose();
    super.dispose();
  }
}
