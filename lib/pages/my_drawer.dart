import 'package:commerceco/widgets/floating_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../domain/domain_shared_preferences.dart';
import '../main.dart';
import '../theme_changer.dart';
import '../ui/localization/Language.dart';
import '../utils/locator.dart';
import 'auth/login/login.dart';
import 'home_provider.dart';

// ignore: must_be_immutable
class MyDrawer extends StatelessWidget {
  GlobalKey<ScaffoldState> scaffoldKey;
  BuildContext context;
  ProviderOfHome providerOfHome;

  MyDrawer(this.scaffoldKey, this.context, this.providerOfHome);

  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeChanger>(context);
    // final theme = NeumorphicTheme.of(context);
    return Container(
      width: 295.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(250.0),
        ),
        color: Colors.green.withOpacity(.9),
        boxShadow: [
          BoxShadow(
              color: const Color(0x1a000000),
              offset: Offset(-15, 5),
              blurRadius: 15)
        ],
      ),
//      margin: EdgeInsets.only(right: ),
//      width: MediaQuery.of(context).size.width*.6,
//      decoration: BoxDecoration(color: Color(0xffD4AB31)),
      child: SafeArea(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            Row(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  width: 200,
                  height: 40,
                  child:
                      itemOfDrawer(itemName: Language.myLanguage().theLanguage
//                    style: TextStyle(fontSize: 16),
//              scaffoldKey: _scaffoldKey
                          ),
                ),
                floatingButton(
                  () {
                    providerOfHome.notifyLang();
                  },
                  text: Language.myLanguage().myLanguage,
                  mini: true,
                  color: Colors.red,
                ),
              ],
            ),
            itemOfDrawer(
              itemName: Language.myLanguage().profile,
              image: 'profile',
//              scaffoldKey: _scaffoldKey

              fun: () {
                if (MyApp.token != null) {
                  Navigator.pushNamed(context, '/Profile');
                } else {
                  Navigator.pushNamed(context, Login.loginPage);
                }
              },
            ),
            itemOfDrawer(
              itemName: Language.myLanguage().changePassword,
              image: 'edit',
//              scaffoldKey: _scaffoldKey

              fun: () {
                if (MyApp.token != null) {
                  Navigator.pushNamed(context, '/ChangePassword');
                } else {
                  Navigator.pushNamed(context, Login.loginPage);
                }
              },
            ),
            ListTile(
              title: Row(
//                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
//                NeumorphicText('Change to ${(theme.isUsingDark?'Light':'Dark')} mode'),
                  Text(
                    Language.myLanguage().darkMode,
                    textAlign: TextAlign.start,
                  ),
                  Spacer(),
                  Switch(
                      value: theme.dark,
                      onChanged: (b) {
                        theme.changeTheme();
                      }),
                  SizedBox(
                    width: 10,
                  ),
//                Text(
//                  Language.myLanguage().Theme,
//                  style: TextStyle(color: Colors.white),
//                ),
                ],
              ),
            ),
            ListTile(
              title: InkWell(
//              shape: new RoundedRectangleBorder(
//                borderRadius: new BorderRadius.circular(30.0),
//              ),
//              color: Colors.deepOrangeAccent,
//              padding: EdgeInsets.fromLTRB(1, 9, 1, 9),
                onTap: () {
                  SharedPreferencesDomain sharedPrefDomain =
                      locator<SharedPreferencesDomain>();
                  sharedPrefDomain.clearSharedPreferences();
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => Login()),
                  );
//            Loading()
//                        _loginBloc.LoginAction(context);
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
//                      'Sign out',
                      Language.myLanguage().signOut,
                      style: TextStyle(fontSize: 18),
                    ),
//                    new Icon(
//                      Icons.arrow_forward_ios,
////                      color: Colors.white,
//                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  ListTile itemOfDrawer({String itemName, String image, dynamic fun}) {
//  ListTile itemOfDrawer({String itemName,String image,dynamic scaffoldKey, ProviderOfHome ProviderOfHome}){
    return ListTile(
      title: Row(
        key: UniqueKey(),
        children: <Widget>[
//          Image.asset(
//            'assets/$image.png',
//            fit: BoxFit.fitHeight,
//            height: 20,
//          ),
//          SizedBox(
//            width: 10,
//          ),
          AnimatedSwitcher(
            key: UniqueKey(),
            duration: const Duration(seconds: 2),
            child: Text(
              itemName, key: UniqueKey(),
//            style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
      onTap: () {
        // Update the state of the app.
        fun();

        scaffoldKey.currentState.openEndDrawer();
      },
    );
  }
}
