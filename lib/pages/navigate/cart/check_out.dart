//import 'package:el_gelany/UI/ShoppingCart/OrderConfirmed.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../../pages/navigate/cart/order_confirmed.dart';

class CheckOut extends StatefulWidget {
  CheckOut({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _CheckOut createState() => _CheckOut();
}

class _CheckOut extends State<CheckOut> {
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
        '',
//        Language.Lang().checkout,
        style: TextStyle(
            decorationStyle: TextDecorationStyle.double, fontSize: 16),
      ),
    );

//      RaduisButton().build(
//          Language.Lang().editProfile(),
//          Icon(
//            Icons.edit,
//            color: Colors.white,
//            size: 23,
//          ),
//          Colors.deepOrangeAccent,
//          Colors.white),
//    );
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
    // design
//    var padding2 = new Padding(padding: EdgeInsets.all(2));
    var padding4 = new Padding(padding: EdgeInsets.all(4));
//    var padding6 = new Padding(padding: EdgeInsets.all(6));
//    var padding9 = new Padding(padding: EdgeInsets.all(9));
    var padding12 = new Padding(padding: EdgeInsets.all(12));

//    var ProductItemCard = Padding(
//        padding: EdgeInsets.all(4),
//        child: Card(
//          elevation: 3,
//          shape:
//              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
//          child: Stack(
//            alignment: AlignmentDirectional.topEnd,
//            children: <Widget>[
//              Padding(
//                padding: EdgeInsets.all(9),
//                child: Column(
//                  crossAxisAlignment: CrossAxisAlignment.center,
//                  mainAxisSize: MainAxisSize.max,
//                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                  children: <Widget>[
//                    Image(
//                      width: 110,
//                      height: 100,
//                      fit: BoxFit.fitHeight,
//                      image: NetworkImage(
//                          "https://www.rd.com/wp-content/uploads/2017/05/01-know-more-Facts-About-Seafood_530203870-Tema_Kud-ft.jpg"),
//                    ),
//                    padding2,
//                    Text("product Name",
//                        style: TextStyle(fontSize: 16, color: Colors.black)),
//                    Text("product sup details",
//                        style: TextStyle(fontSize: 14, color: Colors.blueGrey)),
//                    padding4,
//                    Text(
//                      "2 kilo",
//                      style: TextStyle(color: Colors.grey),
//                    ),
//                    Text(
//                      "100 EGP",
//                      style: TextStyle(color: Colors.red),
//                    ),
//                    padding4,
//                    Row(
//                      mainAxisSize: MainAxisSize.min,
//                      crossAxisAlignment: CrossAxisAlignment.center,
//                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                      children: <Widget>[
//                        Image(
//                          image: AssetImage("assets/decrease.png"),
//                        ),
//                        Padding(
//                          padding: EdgeInsets.all(6),
//                        ),
//                        Text("2"),
//                        Padding(
//                          padding: EdgeInsets.all(6),
//                        ),
//                        Image(
//                          image: AssetImage("assets/increase.png"),
//                        ),
//                      ],
//                    )
//                  ],
//                ),
//              ),
//              Image(
//                image: AssetImage("assets/remove.png"),
//              ),
//            ],
//          ),
//        ));
    var line = Container(
      height: 1,
      color: Colors.grey[500],
    );
    var subttoalDesign = Padding(
      padding: EdgeInsets.all(6),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            'subTotal',
//            Language.Lang().subTotal
          ),
          Text("200 EGP")
        ],
      ),
    );

    var deliveryDesign = Padding(
      padding: EdgeInsets.all(6),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            'delivery',
//            Language.Lang().delivery,
          ),
          Text(
            "20 EGP",
          )
        ],
      ),
    );

    var totalDesign = Padding(
      padding: EdgeInsets.all(6),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            'total',
//            Language.Lang().total,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(
            "220 EGP",
            style: TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
    //totals design
    var totalSumamryDesign = Padding(
      padding: EdgeInsets.all(9),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        elevation: 3.5,
        child: Padding(
          padding: EdgeInsets.all(9),
          child: Column(
            children: <Widget>[
              subttoalDesign,
              line,
              deliveryDesign,
              line,
              totalDesign,
            ],
          ),
        ),
      ),
    );
    var changeAddressBTN = Container(
      height: 30,
      child: RaisedButton(
        padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(16),
                topRight: Radius.circular(16),
                bottomLeft: Radius.circular(16))),
        disabledColor: Colors.deepOrange,
        color: Colors.deepOrange,
        colorBrightness: Brightness.dark,
        onPressed: () {
          debugPrint("change Address clicked");
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              'changeAddress',
//              Language.Lang().changeAddress,
              style: TextStyle(color: Colors.white, fontSize: 14),
            ),
          ],
        ),
      ),
    );

    var deliveryAddressText = Text(
      'deliveryAddress',
//      Language.Lang().deliveryAddress,
      style: TextStyle(
          fontWeight: FontWeight.bold, fontSize: 18, color: Colors.black54),
    );
    var addressSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          "building , street \ncity, country",
          style: TextStyle(fontSize: 14, color: Colors.black54),
        ),
        changeAddressBTN
      ],
    );
    var deliveryAddressDesign = Padding(
      padding: EdgeInsets.fromLTRB(12, 9, 12, 6),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          deliveryAddressText,
          padding4,
          addressSection,
        ],
      ),
    );

    var deliveryDateText = Padding(
      padding: EdgeInsets.all(12),
      child: Text(
        'deliveryDate',
//        Language.Lang().deliveryDate,
        style: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 18, color: Colors.black54),
      ),
    );
    var actualDateText = Padding(
      padding: EdgeInsets.fromLTRB(12, 0, 12, 0),
      child: Text(
        "Monday 4/2/2019",
        style: TextStyle(color: Colors.black54),
      ),
    );

    var checkoutBTN = Center(
      child: RaisedButton(
        padding: EdgeInsets.fromLTRB(60, 0, 60, 0),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(16),
                topRight: Radius.circular(16),
                bottomLeft: Radius.circular(16))),
        disabledColor: Colors.deepOrange,
        color: Colors.deepOrange,
        colorBrightness: Brightness.dark,
        onPressed: () {
          Route route =
              MaterialPageRoute(builder: (context) => OrderConfirmed());
          Navigator.push(context, route);
        },
        child: Text(
          'confirm',
//          Language.Lang().confirm,
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
    );

    return Material(
      child: ListView(
        children: <Widget>[
          headerSection,
          totalSumamryDesign,
          deliveryAddressDesign,
          padding12,
          deliveryDateText,
          actualDateText,
          Padding(
            padding: EdgeInsets.all(30),
          ),
          checkoutBTN,
        ],
      ),
    );
  }

  addAddressAction(BuildContext context) {
    debugPrint("Add Address");
  }
}
