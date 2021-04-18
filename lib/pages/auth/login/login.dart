import 'package:commerceco/widgets/login/auth_background.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../model/user/user_login.dart';
import '../../../pages/auth/register/register.dart';
import '../../../ui/localization/Language.dart';
import '../../../utils/Validator.dart';
import '../../../widgets/app_background.dart';
import '../../../widgets/login/items_of_login.dart';
import '../../../widgets/login/red_button.dart';
import 'login_provider.dart';

class Login extends StatefulWidget {
  static const String loginPage = 'Login';

  Login() : super();

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
//  var _phonePassWordController;
  final _phoneNumberController = TextEditingController();
  final _passWordController = TextEditingController();

//  LoginPresenter _loginPresenter;
  UserLogin _user;
  FocusNode passwordFocusNode = new FocusNode();
  ProviderOfLogin providerOfLogin = ProviderOfLogin();
  final _key = GlobalKey<FormState>();
  @override
  void initState() {
//    _loginPresenter = LoginPresenter(_user, this);
//    _loginPresenter.toString();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
//    print('tttttt ${MediaQuery.of(context).textScaleFactor}');
    FocusNode passwordFocusNode = new FocusNode();

    FocusNode nullNode = FocusNode();

    var loginBTN = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RedButton(
          buttonName: Language.myLanguage().login,
          fun: log,
          color: Colors.green,
        ),
      ],
    );
    var registerButton = RedButton(
        buttonName: Language.myLanguage().signUpNewAccount,
        fun: () {
          Navigator.pushNamed(context, Register.registerPage);
        });
    //main design
    return ChangeNotifierProvider<ProviderOfLogin>(
      create: (context) => providerOfLogin,
      child: Consumer<ProviderOfLogin>(
        builder: (context, model, child) => Scaffold(
          body: Material(
            child: Stack(
              children: <Widget>[
                AuthBackground(),
//                Container(
//                height: MediaQuery.of(context).size.height,
//                  width: MediaQuery.of(context).size.width,
//                  decoration: new BoxDecoration(
//                    image: new DecorationImage(
//                      image: new AssetImage("assets/login_bg.png"),
//                      fit: BoxFit.cover,
////                    matchTextDirection: false,
//                    ),
//                  ),
//                ),
                Container(
                  child: Form(
                    key: _key,
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(30, 220, 30, 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              itemsOfLogin(
                                  context,
                                  Validators().validatePhone,
                                  _phoneNumberController,
                                  Language.myLanguage().phoneNum,
                                  70,
                                  ex: Language.myLanguage().phoneNumEx,
                                  nextNode: passwordFocusNode,
                                  textType: TextInputType.phone),
                              itemsOfLogin(
                                  context,
                                  Validators().validatePassword,
                                  _passWordController,
                                  Language.myLanguage().password,
                                  70,
                                  ex: '*****',
                                  node: passwordFocusNode,
                                  pass: providerOfLogin.showPassword,
                                  nextNode: nullNode,
                                  visible: providerOfLogin.changeShowPassword,
                                  textType: TextInputType.text),
                              SizedBox(
                                height: 9,
                              ),
                              loginBTN,
                              SizedBox(
                                height: 9,
                              ),
                              registerButton,
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 18.0),
                                child: RawMaterialButton(
                                  child: Text(
                                    Language.myLanguage().forgetPassword,
                                    style: TextStyle(
                                        color: Colors.red, fontSize: 18),
                                  ),
                                  onPressed: () {
                                    Navigator.pushNamed(context, '/forget');
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _phoneNumberController.dispose();
    _passWordController.dispose();
    super.dispose();
  }

  log() async {
//    to do uncomment the following
    providerOfLogin.login(_phoneNumberController.text, _passWordController.text,
        context: context);
//    _loginPresenter.doLogin(
//        _phoneNumberController.text, _passWordController.text);
  }
}
