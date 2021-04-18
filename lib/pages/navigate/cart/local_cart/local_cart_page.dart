import 'package:flutter/material.dart';

import '../../../../model/new_model/cart_items_response.dart';
import '../../../../ui/localization/Language.dart';

// ignore: must_be_immutable
class LocalCartPage extends StatelessWidget {
//  ProviderOfLocalCart providerOfLocalCart;
  final GlobalKey<AnimatedListState> _listKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
//    providerOfLocalCart = Provider.of<ProviderOfLocalCart>(context);

    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Column(
                children: <Widget>[
                  cartList(context
//                        allProducts: providerOfPage.getList().allProducts,
                      ),
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
        ),
      ),
    );
  }

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
              subTotalDesign('subTotal', '2\$'),
              line,
              subTotalDesign('delivery', '1\$'),
              line,
              subTotalDesign(
                'total',
                '3\$',
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

  Widget cartList(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 250,
      child: AnimatedList(
        key: _listKey,
        scrollDirection: Axis.horizontal,
        initialItemCount: 20,
        itemBuilder: (BuildContext context, int index, Animation animation) {
          return FadeTransition(
            key: UniqueKey(),
            opacity: animation,
            child: _buildItem(
//                providerOfPage.getList().allProducts[index],
                context: context,
                index: index),
          );
        },
      ),
    );
  }

  Widget _buildItem({BuildContext context, int index}) {
    return Card(
      key: UniqueKey(),
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Stack(
        alignment: AlignmentDirectional.topEnd,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(9),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Image(
                  width: 110,
                  height: 100,
                  fit: BoxFit.fitHeight,
                  image: NetworkImage(
                      "https://www.rd.com/wp-content/uploads/2017/05/01-know-more-Facts-About-Seafood_530203870-Tema_Kud-ft.jpg"),
                ),
                //product Name
                Container(
                  width: 150,
                  child: Text(
                    'Name',
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      decorationStyle: TextDecorationStyle.dashed,
                    ),
                  ),
                ),
                Text(
                  'package Name',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.blueGrey,
                  ),
                ),
                Text(
                  'quantity',
                  style: TextStyle(color: Colors.grey),
                ),
                Text(
                  'customerPrice',
                  style: TextStyle(color: Colors.red),
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.add),
                      onPressed: () {},
                    ),
                    Padding(
                      padding: EdgeInsets.all(6),
                    ),
                    Text(
                      'quantity',
                    ),
                    Padding(
                      padding: EdgeInsets.all(6),
                    ),
                    IconButton(
                      icon: Icon(Icons.minimize),
                      onPressed: () {},
                    ),
                  ],
                )
              ],
            ),
          ),
          InkWell(
            child: CircleAvatar(
              child: Icon(Icons.close),
              maxRadius: 18,
              backgroundColor: Colors.red,
            ),
//            backgroundColor: Colors.red,
            onTap: () {
//              providerOfLocalCart.deleteFromList(index);

              deleteItem(
//                  item: providerOfLocalCart.list[index],
                  context: context,
                  index: index);
//              providerOfLocalCart.notify();
//              if (await providerOfPage.deleteItemFromCart(item)) {
//                //item deleted successfully
//                if (providerOfPage.getList().allProducts.length <= 1) {
//                  providerOfPage.notify();
//                } else {
//                  index != null
//                      ? deleteItem(
//                          item: providerOfPage.getList().allProducts[index],
//                          context: context,
//                          index: index)
//                      : null;
//                }
//              } else {
//                print('check Your Internet');
//              }
            },
          ),
        ],
      ),
    );
  }

  void deleteItem({BuildContext context, int index, AllProduct item}) {
//    var item = LocalCartPage.modelOfLocalCart.allProducts.removeAt(index);
//    providerOfLocalCart.deleteFromList(index);
    _listKey.currentState.removeItem(
      index,
      (BuildContext context, Animation<double> animation) {
        return FadeTransition(
          opacity:
              CurvedAnimation(parent: animation, curve: Interval(0.5, 1.0)),
          child: SizeTransition(
            sizeFactor:
                CurvedAnimation(parent: animation, curve: Interval(0.0, 1.0)),
            axisAlignment: 0.0,
            child: _buildItem(context: context, index: index),
          ),
        );
      },
      duration: Duration(milliseconds: 600),
    );
//    providerOfLocalCart.cartItems()
//    providerOfLocalCart.itemsCount--;
//    providerOfLocalCart.notify();
  }
}
