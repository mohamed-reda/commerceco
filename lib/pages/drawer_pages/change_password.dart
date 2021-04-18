import 'package:flutter/material.dart';

import '../../pages/auth/login/login.dart';
import '../../pages/auth/register/items_of_register.dart';
import '../../ui/localization/Language.dart';
import '../../utils/Validator.dart';
import '../../widgets/login/red_button.dart';

class ChangePassword extends StatefulWidget {
  static String loginPage = 'RestPassword';

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<ChangePassword> {
  final _oldPasswordController = TextEditingController();
  final _newPasswordController = TextEditingController();

//() => Navigator.pop(context),
  @override
  void initState() {
//    _loginPresenter = LoginPresenter(_user, this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    //main design
    return Stack(
      children: <Widget>[
        new Container(
          decoration: new BoxDecoration(
            image: new DecorationImage(
              image: new AssetImage("assets/category.jpg"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Form(
            autovalidate: true,
            child: Stack(
              children: <Widget>[
                SafeArea(
                  child: IconButton(
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    ),
                    onPressed: () => Navigator.pop(context),
                  ),
                ),
                SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: MediaQuery.of(context).size.height * .3,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40),
                        child: itemsOfRegister(
                          context,
                          Validators().validatePassword,
                          _oldPasswordController,
                          Language.myLanguage().password,
                          70,
                          ex: Language.myLanguage().password,
                          nextNode: FocusNode(),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            bottom: 40, left: 40, right: 40),
                        child: itemsOfRegister(
                          context,
                          Validators().validatePassword,
                          _newPasswordController,
                          Language.myLanguage().newPassword,
                          70,
                          ex: Language.myLanguage().newPassword,
                          nextNode: FocusNode(),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          RedButton(
                            buttonName: Language.myLanguage().changePassword,
                            color: Color(0xFFFFCC33),
                            fun: change,
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ],
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    _oldPasswordController.dispose();
    _newPasswordController.dispose();
    super.dispose();
  }

  change() {
    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (context) => Login()));
    //todo uncomment the following
//    _loginPresenter.doRest(
//        _phoneNumberController.text, );
  }
}
