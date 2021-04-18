import 'package:commerceco/widgets/login/auth_background.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../pages/auth/register/items_of_register.dart';
import '../../../pages/auth/register/register_provider.dart';
import '../../../ui/localization/Language.dart';
import '../../../utils/Validator.dart';
import 'register_drop_menu.dart';

// ignore: must_be_immutable
class Register extends StatelessWidget {
  static String registerPage = 'Register';
  List<FocusNode> focusList = [
    FocusNode(),
    FocusNode(),
    FocusNode(),
    FocusNode(),
    FocusNode(),
    FocusNode(),
    FocusNode(),
    FocusNode(),
  ];

  ProviderOfRegister providerOfRegister = ProviderOfRegister();
  var padding = new Padding(padding: EdgeInsets.all(9));

  final _key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var padding = Padding(
      padding: EdgeInsets.all(2),
    );
    return ChangeNotifierProvider<ProviderOfRegister>(
      create: (context) => providerOfRegister,
      child: Consumer<ProviderOfRegister>(
        builder: (context, model, child) => Scaffold(
          body: new Stack(
            children: <Widget>[
              AuthBackground(),
              SafeArea(
                  child: Form(
                key: _key,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: IconButton(
                        icon: Icon(
                          Icons.arrow_back_ios,
                        ),
                        onPressed: () => Navigator.pop(context),
                      ),
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 18.0),
                          child: Column(
//                  textDirection:Language.lang==true? TextDirection.ltr:TextDirection.rtl ,
                            children: <Widget>[
                              itemsOfRegister(
                                  context,
                                  Validators().validateName,
                                  model.fullNameController,
                                  Language.myLanguage().fullName,
                                  40,
                                  nextNode: focusList[0]),
                              itemsOfRegister(
                                  context,
                                  Validators().validatePhone,
                                  model.phoneNumberController,
                                  Language.myLanguage().phoneNumber,
                                  40,
                                  ex: Language.myLanguage().phoneNumEx,
                                  node: focusList[0],
                                  nextNode: focusList[1]),
                              itemsOfRegister(
                                  context,
                                  Validators().validateEmail,
                                  model.emailController,
                                  Language.myLanguage().email,
                                  40,
                                  node: focusList[1],
                                  nextNode: focusList[2]),
                              itemsOfRegister(
                                  context,
                                  Validators().validatePassword,
                                  model.passwordController,
                                  Language.myLanguage().password,
                                  40,
                                  ex: '*************',
                                  pass: true,
                                  node: focusList[2],
                                  nextNode: focusList[3]),
                              itemsOfRegister(
                                  context,
                                  Validators().validateText,
                                  model.addressController,
                                  Language.myLanguage().address,
                                  40,
                                  node: focusList[3],
                                  nextNode: focusList[4]),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.only(top: 6),
                                    child: InkWell(
                                      // backgroundColor:
                                      //     Colors.white.withOpacity(.3),
                                      child: Icon(
                                        Icons.location_on,
                                        size: 40,
                                      ),
                                      onTap: () async {
//                                            providerOfRegister.showMap = true;
//                                            providerOfRegister.notify();
                                        providerOfRegister
                                            .checkAndViewMaps(context);
                                      },
                                    ),
                                  ),
                                  // DropMenu(providerOfRegister),
                                ],
                              ),
                              itemsOfRegister(
                                  context,
                                  Validators().validateText,
                                  model.floorController,
                                  Language.myLanguage().floor,
                                  40,
                                  node: focusList[4],
                                  nextNode: focusList[5]),
                              itemsOfRegister(
                                  context,
                                  Validators().validateText,
                                  model.specialLandMarkController,
                                  Language.myLanguage().specialLandMark,
                                  40,
                                  node: focusList[6],
                                  nextNode: focusList[7]),
                              padding,
                            ],
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.max,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 12.0, horizontal: 30),
                      child: RaisedButton(
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(40.0),
                        ),
                        color: Colors.deepOrangeAccent,
                        padding: EdgeInsets.fromLTRB(36, 9, 36, 9),
                        onPressed: () {
                          providerOfRegister.checkRegister(
                            context: context,
                            email: model.emailController.text,
                            phone: model.phoneNumberController.text.toString(),
                            password: model.passwordController.text,
                            clientName: model.fullNameController.text,
                            fkAreaIndex: providerOfRegister.getAreaIndex(),
                            address: model.addressController.text,
                            floor: model.floorController.text,
                            apartment: model.apartmentController.text,
                            specialMark: model.specialLandMarkController.text,
                          );
                        },
                        child: Center(
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                Language.myLanguage().next,
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              ),
                              new Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )),
            ],
          ),
        ),
      ),
    );
  }
}
