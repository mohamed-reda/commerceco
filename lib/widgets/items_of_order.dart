import 'package:flutter/material.dart';

import '../main.dart';
import '../ui/localization/Language.dart';

Widget itemOfOrder(
  BuildContext context,
  bool inCard,
//    {OrderResponseModel order}
) {
  //inCard if it true then return the bottom in the card
  return Card(
      margin: EdgeInsets.all(12),
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    SizedBox(
                      width: 8,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Image.network(
                        "https://www.rd.com/wp-content/uploads/2017/05/01-know-more-Facts-About-Seafood_530203870-Tema_Kud-ft.jpg",
                        fit: BoxFit.fill,
                        width: MediaQuery.of(context).size.width * .44,
//                  height: MediaQuery.of(context).size.height * .18,
                      ),
                    ),
                    Padding(padding: EdgeInsets.all(9)),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(padding: EdgeInsets.all(2)),
                        Text(
                          'ID: ' +
//                        order.headerId.toString()??
                              "products ID",
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                        Text(
                          "product sup details",
                          style:
                              TextStyle(fontSize: 14, color: Colors.blueGrey),
                        ),
                        Padding(padding: EdgeInsets.all(4)),
                        Row(
                          children: <Widget>[
                            Text(
                              "2 kilo",
                              style: TextStyle(color: Colors.grey),
                            ),
                            Padding(padding: EdgeInsets.all(4)),
                            Text(
                              "100 EGP",
                              style: TextStyle(color: Colors.red),
                            ),
                          ],
                        ),
                        Padding(padding: EdgeInsets.all(4)),
                        Text(Language.myLanguage().status),
                        Text("out for delivery",
                            style:
                                TextStyle(color: Colors.green, fontSize: 16)),
                        Padding(padding: EdgeInsets.all(2)),
                        Text(
//                        order.insDate.toString().substring(11)??

                            "5/2/2019",
                            style: TextStyle(color: Colors.grey)),
                      ],
                    ),
                    SizedBox(
                      width: 8,
                    ),
                  ],
                ),
                reorderButton(context, inCard),
              ],
            ),
//      Center(child:reorderButton(context,!inCard),),
          ],
        ),
      ));
}

Widget reorderButton(BuildContext context, bool inCard) {
  if (inCard) {
    return Container(
      width: MediaQuery.of(context).size.width * .45,
      child: RaisedButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        disabledColor: Colors.red,
        color: Colors.red,
        colorBrightness: Brightness.light,
        onPressed: () {
          debugPrint("reorde action");
        },
        child: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          textDirection: MyApp.lang ? TextDirection.ltr : TextDirection.rtl,
          children: <Widget>[
            Text(
              Language.myLanguage().reorder,
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            Icon(
              Icons.autorenew,
              color: Colors.white,
              size: 26,
            )
          ],
        ),
      ),
    );
  } else {
    return SizedBox(
      height: 0,
      width: 0,
    );
  }
}
