import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../../ui/localization/Language.dart';
import '../../../widgets/items_of_order.dart';

class OrderDetails extends StatefulWidget {
  static String orderDetails = 'orderDetails';

  OrderDetails({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _OrderDetails createState() => _OrderDetails();
}

class _OrderDetails extends State<OrderDetails> {
  @override
  Widget build(BuildContext _buildContext) {
    var backImage = Row(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Image(
              image: AssetImage("assets/clip_bg.png"),
              fit: BoxFit.fill,
            ),
          ),
        ]);
    var logoImage = Padding(
        padding: EdgeInsets.fromLTRB(0, 26, 0, 0),
        child: Row(
          children: <Widget>[Image(image: AssetImage("assets/logo.png"))],
          mainAxisAlignment: MainAxisAlignment.center,
        ));
    var backIcon = GestureDetector(
      child: Padding(
        padding: EdgeInsets.fromLTRB(12, 40, 16, 16),
        child: Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
      ),
      onTap: () {
        Navigator.pop(context);
      },
    );
    //page title
    var title = Padding(
      padding: EdgeInsets.fromLTRB(12, 100, 0, 0),
      child: Text(
        Language.myLanguage().orderDetails,
        style: TextStyle(
            decorationStyle: TextDecorationStyle.double, fontSize: 16),
      ),
    );

    var headerSection = Stack(
      children: <Widget>[
        Container(
          height: 135,
          child: Stack(children: <Widget>[
            backImage,
            logoImage,
            backIcon,
            title,
          ]),
        ),
      ],
    );
    var cancelOrderBTN = Padding(
      padding: EdgeInsets.fromLTRB(9, 12, 9, 0),
      child: Container(
        width: 175,
        height: 37,
        child: RaisedButton(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(16),
                  bottomRight: Radius.circular(16),
                  bottomLeft: Radius.circular(16))),
          disabledColor: Colors.deepOrange,
          color: Colors.deepOrange,
          colorBrightness: Brightness.light,
          onPressed: () {
            debugPrint("cancel Order action");
          },
          child: Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                Language.myLanguage().cancelOrder,
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              Icon(
                Icons.clear,
                color: Colors.white,
                size: 26,
              )
            ],
          ),
        ),
      ),
    );

    return Scaffold(
      // resizeToAvoidBottomPadding: true,
      body: Column(
        children: <Widget>[
          headerSection,
          itemOfOrder(context, false),
          cancelOrderBTN
        ],
      ),
    );
  }

  addAddressAction(BuildContext context) {
    debugPrint("Add Address");
  }
}
