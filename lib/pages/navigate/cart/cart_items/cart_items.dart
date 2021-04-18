//import 'package:elgelany/model/new_model/cart_items_response.dart';
//import 'package:elgelany/pages/navigate/cart/cart_items/provider_of_cart_items.dart';
//import 'package:elgelany/pages/navigate/cart/local_cart/local_cart_page.dart';
//import 'package:flutter/material.dart';
//import 'package:provider/provider.dart';
//
//import '../cart_provider.dart';
//
//// ignore: must_be_immutable
//class CartItem extends StatelessWidget {
////  int index;
////  AllProduct item;
////
////  CartItem({this.item});
////  ProviderOfCart providerOfPage;
//
////  List<AllProduct> allProducts;
//
////  CartItem({this.allProducts});
////  ProviderOfCartItems providerOfCartItems;
//
//  final GlobalKey<AnimatedListState> _listKey = GlobalKey();
//
//  @override
//  Widget build(BuildContext context) {
////    providerOfCartItems = ProviderOfCartItems();
////    providerOfPage = Provider.of<ProviderOfCart>(context);
////    providerOfCartItems = ProviderOfCartItems(allProducts);
//    return Container(
//      width: MediaQuery.of(context).size.width,
//      height: 250,
//      child: AnimatedList(
//        key: _listKey,
//        scrollDirection: Axis.horizontal,
//        initialItemCount: LocalCartPage.modelOfLocalCart.allProducts == null
//            ? 0
//            : LocalCartPage.modelOfLocalCart.allProducts.length,
//        itemBuilder: (BuildContext context, int index, Animation animation) {
//          return FadeTransition(
//            key: UniqueKey(),
//            opacity: animation,
//            child: _buildItem(
//                item: LocalCartPage.modelOfLocalCart.allProducts[index],
////                providerOfPage.getList().allProducts[index],
//                context: context,
//                index: index),
//          );
//        },
//      ),
//    );
//  }
//
//  Widget _buildItem({BuildContext context, int index, AllProduct item}) {
//    return Card(
//      key: ValueKey<AllProduct>(item),
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
//                  item.packageName ?? 'package Name',
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
//              LocalCartPage.modelOfLocalCart.allProducts.removeAt(index);
//              deleteItem(
//                  item: LocalCartPage.modelOfLocalCart.allProducts[index],
//                  context: context,
//                  index: index);
////              providerOfCartItems.notify();
////              if (await providerOfPage.deleteItemFromCart(item)) {
////                //item deleted successfully
////                if (providerOfPage.getList().allProducts.length <= 1) {
////                  providerOfPage.notify();
////                } else {
////                  index != null
////                      ? deleteItem(
////                          item: providerOfPage.getList().allProducts[index],
////                          context: context,
////                          index: index)
////                      : null;
////                }
////              } else {
////                print('check Your Internet');
////              }
//            },
//          ),
//        ],
//      ),
//    );
//  }
//
//  void deleteItem({BuildContext context, int index, AllProduct item}) {
//    var item = LocalCartPage.modelOfLocalCart.allProducts.removeAt(index);
//    _listKey.currentState.removeItem(
//      index,
//      (BuildContext context, Animation<double> animation) {
//        return FadeTransition(
//          opacity:
//              CurvedAnimation(parent: animation, curve: Interval(0.5, 1.0)),
//          child: SizeTransition(
//            sizeFactor:
//                CurvedAnimation(parent: animation, curve: Interval(0.0, 1.0)),
//            axisAlignment: 0.0,
//            child: _buildItem(item: item, context: context, index: index),
//          ),
//        );
//      },
//      duration: Duration(milliseconds: 600),
//    );
//  }
//}
