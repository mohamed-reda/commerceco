import 'package:flutter/material.dart';

import '../../../pages/auth/register/items_of_register.dart';
import '../../../ui/localization/Language.dart';
import '../../../utils/Validator.dart';
import '../../../widgets/login/red_button.dart';
import '../../start.dart';

class ForgetPassword extends StatefulWidget {
  static String loginPage = 'RestPassword';

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<ForgetPassword> {
  final _emailController = TextEditingController();
  final _key = GlobalKey<FormState>();
//() => Navigator.pop(context),
  @override
  void initState() {
//    _loginPresenter = LoginPresenter(_user, this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    //main design
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: new Container(
        decoration: new BoxDecoration(
          image: new DecorationImage(
            image: new AssetImage("assets/category.jpg"),
            fit: BoxFit.fill,
          ),
        ),
        child: Form(
          key: _key,
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
              Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(38.0),
                    child: itemsOfRegister(
                      context,
                      Validators().validatePhone,
                      _emailController,
                      Language.myLanguage().email,
                      70,
                      ex: Language.myLanguage().email,
                      nextNode: FocusNode(),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      RedButton(
                        buttonName: Language.myLanguage().forgetPassword,
                        color: Color(0xFFFFCC33),
                        fun: rest,
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
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  rest() {
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => StartScreen()));
    //todo uncomment the following
//    _loginPresenter.doRest(
//        _phoneNumberController.text, );
  }
}
