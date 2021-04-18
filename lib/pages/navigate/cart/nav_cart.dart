import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../ui/localization/Language.dart';
import '../../../utils/delete_interface.dart';

//
// ignore: must_be_immutable
class ShoppingCart extends DeleteListInterface {
  bool b = true;
//  ProviderOfCart providerOfPage;

  @override
  Widget build(BuildContext context) {
//    providerOfPage = Provider.of<ProviderOfCart>(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          child: Column(
            children: <Widget>[
//                      CartItem( ),
//                        allProducts: providerOfPage.getList().allProducts,
//
//                        productItemCard(context, 1),
//                      Container(
//                          width: MediaQuery.of(context).size.width,
//                          height: 250,
//                          child: ListView.builder(
//                            itemCount:
//                                providerOfPage.getList().allProducts.length,
//                            itemBuilder: (context, index) {
//                              return productItemCard(
//                                  context: context,
//                                  item: providerOfPage
//                                      .getList()
//                                      .allProducts[index]);
//                            },
//                            scrollDirection: Axis.horizontal,
//                          )
////                          ListView.builder(
////                            itemCount: 1,
//////                                providerOfCart.getList().length,
////                            itemBuilder: (BuildContext context, int index) {
////                              return productItemCard(context, index);
////                            },
////                          scrollDirection: Axis.vertical,
////                          ),
//                          ),
              total(),
              Center(
                child: RaisedButton(
                  padding: EdgeInsets.fromLTRB(40, 0, 40, 0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(16),
                      topRight: Radius.circular(16),
                      bottomLeft: Radius.circular(16),
                    ),
                  ),
                  disabledColor: Colors.deepOrange,
                  color: Colors.deepOrange,
                  colorBrightness: Brightness.dark,
                  onPressed: () {
//                            Route route = MaterialPageRoute(
//                                builder: (context) => CheckOut());
//                            Navigator.push(context, route);
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
//                                'checkout',
                        '${Language.myLanguage().checkout}',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      Icon(
                        Icons.attach_money,
                        color: Colors.white,
                        size: 26,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
//
//  Widget productItemCard({BuildContext context, int index, AllProduct item}) {
//    return Card(
//      elevation: 3,
//      shape: RoundedRectangleBorder(
//        borderRadius: BorderRadius.circular(16),
//      ),
//      child: Stack(
//        alignment: AlignmentDirectional.topEnd,
//        children: <Widget>[
//          Padding(
//            padding: EdgeInsets.all(9),
//            child: Column(
//              crossAxisAlignment: CrossAxisAlignment.center,
//              mainAxisSize: MainAxisSize.max,
//              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//              children: <Widget>[
//                Image(
//                  width: 110,
//                  height: 100,
//                  fit: BoxFit.fitHeight,
//                  image: NetworkImage(
//                      "https://www.rd.com/wp-content/uploads/2017/05/01-know-more-Facts-About-Seafood_530203870-Tema_Kud-ft.jpg"),
//                ),
//                //product Name
//                Container(
//                  width: 150,
//                  child: Text(
//                    item.itemName,
//                    overflow: TextOverflow.ellipsis,
//                    style: TextStyle(
//                      fontSize: 16,
//                      color: Colors.black,
//                      decorationStyle: TextDecorationStyle.dashed,
//                    ),
//                  ),
//                ),
//                Text(
//                  item.packageName,
//                  style: TextStyle(
//                    fontSize: 14,
//                    color: Colors.blueGrey,
//                  ),
//                ),
//                Text(
//                  item.quantity.toString(),
//                  style: TextStyle(color: Colors.grey),
//                ),
//                Text(
//                  item.customerPrice.toString(),
//                  style: TextStyle(color: Colors.red),
//                ),
//                Row(
//                  mainAxisSize: MainAxisSize.min,
//                  crossAxisAlignment: CrossAxisAlignment.center,
//                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                  children: <Widget>[
//                    Image(
//                      image: AssetImage("assets/decrease.png"),
//                    ),
//                    Padding(
//                      padding: EdgeInsets.all(6),
//                    ),
//                    Text(
//                      item.quantity.toString(),
//                    ),
//                    Padding(
//                      padding: EdgeInsets.all(6),
//                    ),
//                    Image(
//                      image: AssetImage("assets/increase.png"),
//                    ),
//                  ],
//                )
//              ],
//            ),
//          ),
//          InkWell(
//            child: Image(
//              image: AssetImage("assets/remove.png"),
//            ),
//            onTap: () {
//              providerOfPage.deleteItemFromCart(item);
//            },
//          ),
//        ],
//      ),
//    );
//  }

  var line = Container(
    height: 1,
    color: Colors.grey[500],
  );

  Widget total() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        elevation: 3.5,
        child: Padding(
          padding: EdgeInsets.all(9),
          child: Column(
            children: <Widget>[
              subTotalDesign('subTotal', 'totalAfterDiscount\$'),
              line,
              subTotalDesign('delivery', 'delivery\$'),
              line,
              subTotalDesign(
                'total',
                'totalAfterDiscount + delivery\$',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget subTotalDesign(String title, String price) {
    return Padding(
      padding: EdgeInsets.all(6),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            title,
//                        Language.getLang().subTotal
          ),
          Text(
            price,
//                        "${cartData.subTotal} ${Language.getLang().EGP}"
          )
        ],
      ),
    );
  }
}
