import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class OrderConfirmed extends StatefulWidget {
  OrderConfirmed({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _OrderConfirmed createState() => _OrderConfirmed();
}

class _OrderConfirmed extends State<OrderConfirmed> {
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

    var headerSection = Stack(
      children: <Widget>[
        Container(
          height: 135,
          child: Stack(children: <Widget>[
            backImage,
            logoImage,
            backIcon,
          ]),
        ),
      ],
    );
    // design
    var padding2 = new Padding(padding: EdgeInsets.all(2));
    var padding4 = new Padding(padding: EdgeInsets.all(4));
    var padding6 = new Padding(padding: EdgeInsets.all(6));
    var padding9 = new Padding(padding: EdgeInsets.all(9));

    var odrerConfirmedText = Center(
      child: Text(
        '',
//        Language.Lang().orderConfirmed,
        style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            letterSpacing: 1.2,
            fontWeight: FontWeight.bold),
      ),
    );

    var okImage = Image(
      image: AssetImage("assets/confirmed.png"),
      height: 300,
      width: 300,
      alignment: AlignmentDirectional.center,
    );

    var trckOrderText = Center(
      child: Text(
        '',
//          Language.Lang().trackOrderHistory
      ),
    );

    var checkoutBTN = Center(
      child: RaisedButton(
        padding: EdgeInsets.fromLTRB(40, 0, 40, 0),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(16),
                topRight: Radius.circular(16),
                bottomLeft: Radius.circular(16))),
        disabledColor: Colors.deepOrange,
        color: Colors.deepOrange,
        colorBrightness: Brightness.dark,
        onPressed: () {
          debugPrint("track history clicked action");
        },
        child: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              '',
//              Language.Lang().trackHistory,
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            padding4,
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.white,
              size: 18,
            )
          ],
        ),
      ),
    );
    return Scaffold(
        // resizeToAvoidBottomPadding: true,
        body: ListView(
      children: <Widget>[
        headerSection,
        odrerConfirmedText,
        okImage,
        trckOrderText,
        padding6,
        checkoutBTN,
      ],
    ));
  }

  addAddressAction(BuildContext context) {
    debugPrint("Add Address");
  }
}
