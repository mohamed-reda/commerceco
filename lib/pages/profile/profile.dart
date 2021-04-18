import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../domain/domain_shared_preferences.dart';
import '../../model/user/user_data.dart';
import '../../ui/localization/Language.dart';
import '../../utils/locator.dart';
import '../../widgets/profile_red_button.dart';

// ignore: must_be_immutable
class Profile extends StatelessWidget {
  UserData userData = locator<SharedPreferencesDomain>().getJustUser();
  @override
  Widget build(BuildContext context) {
//    var headerSection = ;
    // design
    var padding4 = new Padding(padding: EdgeInsets.all(4));
    var padding6 = new Padding(padding: EdgeInsets.all(6));
    var padding9 = new Padding(padding: EdgeInsets.all(9));
    Widget userNameAndAddressDesign(//        UserData data
        ) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            Language.myLanguage().userName,
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
            ),
          ),
          padding4,
          Text(
            userData.clientName,
//            data.clientName,
            // "Aly Hassan",
            style: TextStyle(
              color: Colors.blueGrey,
              fontSize: 14,
            ),
          ),
          padding9,
          Text(
            Language.myLanguage().deliveryAddress,
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
            ),
          ),
          padding4,
          Text(
//            "${data.address} ${data.apartment ?? ""} ${data.floor ?? ""}",
            userData.address,
            style: TextStyle(
              color: Colors.blueGrey,
              fontSize: 14,
            ),
          ),
        ],
      );
    }

    Widget phoneNumDesign(//        UserData data
        ) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            children: <Widget>[
              Text(
                Language.myLanguage().phoneNum,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
              padding4,
              Text(
                userData.phone1,
//                data. phone1 ,
                style: TextStyle(
                  color: Colors.blueGrey,
                  fontSize: 14,
                ),
              ),
            ],
          ),
          // GestureDetector(
          //   child: addAddressBTN,
          //   onTap: () {
          //     debugPrint(Language.Lang().addAddress);
          //   },
          // ),
        ],
      );
    }

    return Scaffold(
      // resizeToAvoidBottomPadding: true,
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: 135,
                child: Stack(children: <Widget>[
//                  YellowHeader(),
                  Padding(
                      padding: EdgeInsets.fromLTRB(0, 26, 0, 0),
                      child: Row(
                        children: <Widget>[
                          Image(image: AssetImage("assets/logo.png"))
                        ],
                        mainAxisAlignment: MainAxisAlignment.center,
                      )),
                  GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(12, 40, 16, 16),
                        child: IconButton(
                          icon: Icon(
                            Icons.arrow_back_ios,
                            color: Colors.black,
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      )),
                  Padding(
                    padding: EdgeInsets.fromLTRB(12, 100, 0, 0),
                    child: Text(
                      Language.myLanguage().profile,
                      style: TextStyle(
                          decorationStyle: TextDecorationStyle.double,
                          fontSize: 16),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      debugPrint("edit profile");
                    },
                    child: Align(
                      alignment: AlignmentDirectional.bottomEnd,
                      child: profileRedButton(),
                    ),
                  )
                ]),
              ),
            ],
          ),
          padding6,
          Container(
            height: 180,
            child: Padding(
              padding: EdgeInsets.all(3),
              child: Card(
                elevation: 3,
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
//              user name, delivery Addres
                    Padding(
                      padding: EdgeInsets.all(9),
                      child: userNameAndAddressDesign(
//                    snapShot.data.userData
                          ),
                    ),
                    //phone number , add address button
                    Padding(
                      padding: EdgeInsets.all(9),
                      child: phoneNumDesign(
//                    snapShot.data.userData
                          ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(12, 12, 12, 4.5),
            child: Text(
              Language.myLanguage().currentOrders,
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
          ),
//          Container(
//            height: MediaQuery.of(context).size.height * .33,
//            child: ListView(
//              scrollDirection: Axis.horizontal,
//              children: <Widget>[
////                itemOfWidget(context, false),
////                itemOfWidget(context, true),
////                itemOfWidget(context, true),
//                itemOfWidget(context, true),
//              ],
//            ),
//          ),
        ],
      ),
    );
  }

  addAddressAction(BuildContext context) {
    debugPrint("Add Address");
  }
}
//    var addAddressBTN = RaisedButton(
//      shape: RoundedRectangleBorder(
//          borderRadius: BorderRadius.only(
//              bottomRight: Radius.circular(16),
//              topRight: Radius.circular(16),
//              bottomLeft: Radius.circular(16))),
//      disabledColor: Colors.deepOrange,
//      color: Colors.deepOrange,
//      colorBrightness: Brightness.dark,
//      onPressed: () {
//        debugPrint("Add Address clicked");
////        Navigator.push(
////            context, MaterialPageRoute(builder: (context) => AddAddress()));
//      },
//      child: Row(
//        mainAxisSize: MainAxisSize.min,
//        crossAxisAlignment: CrossAxisAlignment.center,
//        children: <Widget>[
//          Text(
//            Language.myLanguage().addAddress,
//            style: TextStyle(color: Colors.white, fontSize: 18),
//          ),
//          Icon(
//            Icons.add,
//            color: Colors.white,
//            size: 26,
//          )
//        ],
//      ),
//    );
