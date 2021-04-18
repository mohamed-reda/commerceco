import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../main.dart';
import '../../model/navigate_models/CategoryModels/new_items_category.dart';
import '../../ui/localization/Language.dart';
import '../../widgets/actions/show_success.dart';
import '../start.dart';
import 'item_provider.dart';

// ignore: must_be_immutable
class ItemDetails extends StatelessWidget {
  ItemDetails({this.imageOfHero, this.tag, this.item});

  Image imageOfHero;
  UniqueKey tag;
  String favImageSource = "assets/add_to_favorites.png";
  ProviderOfItem providerOfItem;
  var padding = Padding(
    padding: EdgeInsets.all(6),
  );
  AllItemsDatum item;

  @override
  Widget build(BuildContext context) {
    providerOfItem = ProviderOfItem();
    return ChangeNotifierProvider<ProviderOfItem>(
      create: (context) => providerOfItem,
      child: Consumer<ProviderOfItem>(
        builder: (context, model, child) => Scaffold(
          body: Stack(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Container(
                    height: 350,
                    child: Card(
                      margin: EdgeInsets.all(0),
                      child: Stack(
                        fit: StackFit.passthrough,
                        children: <Widget>[
                          Card(
                            elevation: 2,
                            margin: EdgeInsets.fromLTRB(0, 22, 0, 0),
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              child: Hero(
                                tag: tag,
                                child: imageOfHero,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Align(
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(12, 36, 0, 0),
                                child: InkWell(
                                  child: Container(
                                    decoration: new BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black87,
                                          blurRadius: 25.0,
                                          spreadRadius: 1.0,
                                          offset: Offset(
                                            5.0,
                                            5.0,
                                          ),
                                        ),
                                      ],
                                    ),
                                    child: Icon(
                                      Icons.keyboard_arrow_left,
                                      size: 35,
                                      color: Colors.white,
                                    ),
                                  ),
                                  onTap: () {
                                    Navigator.of(context).pop();
                                  },
                                ),
                              ),
                              alignment: AlignmentDirectional.topStart,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Align(
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(0, 36, 12, 0),
                                child: InkWell(
                                  child: Container(
                                    decoration: new BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black87,
                                          blurRadius: 25.0,
                                          spreadRadius: 1.0,
                                          offset: Offset(
                                            5.0,
                                            5.0,
                                          ),
                                        ),
                                      ],
                                    ),
                                    child: Stack(
                                      children: <Widget>[
                                        Icon(
                                          Icons.add_shopping_cart,
                                          size: 35,
                                          color: Colors.white,
                                        ),
                                        Align(
                                          heightFactor: 2,
                                          widthFactor: 1,
                                          alignment:
                                              AlignmentDirectional.bottomCenter,
                                          child: CircleAvatar(
                                            radius: 11,
                                            backgroundColor: Colors.red,
                                            foregroundColor: Colors.white,
                                            child: Text(
                                              '${providerOfItem.countOfCartItems}',
                                              style: TextStyle(fontSize: 10),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  onTap: () {
                                    StartScreen.currentIndex = 4;
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                StartScreen()));
                                  },
                                ),
                              ),
                              alignment: AlignmentDirectional.topEnd,
                            ),
                          ),
                          Align(
                            child: Opacity(
                              opacity: .6,
                              child: Container(
                                color: Colors.black,
                                height: 45,
                              ),
                            ),
                            alignment: AlignmentDirectional.bottomEnd,
                          ),
                          Align(
                            child: Padding(
                                padding: EdgeInsets.fromLTRB(16, 0, 16, 9),
                                child: GestureDetector(
                                  onTap: () {
                                    providerOfItem.addToFavorite(
                                        item: item, context: context);
                                  },
                                  child:
                                      Image(image: AssetImage(favImageSource)),
                                )),
                            alignment: AlignmentDirectional.bottomEnd,
                          ),
                          Align(
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(16, 0, 16, 14),
                              child: Text(
                                '${item.itemName}',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16),
                              ),
                            ),
                            alignment: AlignmentDirectional.bottomStart,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.amberAccent,
                      child: Padding(
                        padding: EdgeInsets.all(12),
                        child: Card(
                          elevation: 3,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          color: Colors.white,
                          child: Padding(
                            padding: EdgeInsets.all(12),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: MyApp.lang
                                  ? CrossAxisAlignment.stretch
                                  : CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                showItemData(),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    GestureDetector(
                                      onTap: () {
                                        providerOfItem.decrement();
                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Image.asset(
                                          "assets/decrease.png",
                                          width: 24,
                                          height: 24,
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                    ),
                                    Container(
//                                  width: 35,
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8.0),
                                        child: Text(
                                          '${providerOfItem.getQuantity()}',
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.black),
                                        ),
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        providerOfItem.increment();
                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Image.asset(
                                          "assets/increase.png",
                                          width: 24,
                                          height: 24,
                                          fit: BoxFit.contain,
                                        ),
                                      ),
//                                  Image(
//                                    image: AssetImage("assets/increase.png"),
//                                    width: 50,
//                                    height: 50,
//                                  ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(20, 0, 20, 0),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        providerOfItem.addToCart(item, context);
                                      },
                                      child: Card(
                                        color: Colors.deepOrangeAccent,
                                        child: Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(16, 6, 16, 6),
                                          child: Row(
                                            children: <Widget>[
                                              Text(
                                                Language.myLanguage().addToCart,
                                                style: TextStyle(
                                                    color: Colors.white),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    3, 0, 3, 0),
                                              ),
                                              Icon(
                                                Icons.shopping_cart,
                                                color: Colors.white,
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              ShowSuccess(providerOfItem),
            ],
          ),
        ),
      ),
    );
  }

  Widget showItemData() {
    return Column(
//      textBaseline: TextBaseline.ideographic,
      textDirection: MyApp.lang ? TextDirection.rtl : TextDirection.ltr,
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment:
          MyApp.lang ? CrossAxisAlignment.stretch : CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Text(
          MyApp.lang ? item.itemNameEn : item.itemName,
          style: TextStyle(fontSize: 18),
        ),
        padding,
        Text(
            "${Language.myLanguage().barcode.toString()}${item.barCode.toString()}"),
        padding,
//        Text("${Language.myLanguage().packageName} ${item.packageName}"),
        Text("${Language.myLanguage().packageName}الحمد لله"),
        padding,
//        Text("${Language.myLanguage().notes} ${item.notes}"),
        Text("${Language.myLanguage().notes}الحمد لله"),
        padding,
//        Text("${Language.myLanguage().package}${item.packageSize}"),
        Text("${Language.myLanguage().package}الحمد لله"),
        padding,
        Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment:
              MyApp.lang ? MainAxisAlignment.start : MainAxisAlignment.end,
          children: <Widget>[
            Text(
              "${Language.myLanguage().price} ${item.customerPrice - item.purchaseDiscount}",
              style: TextStyle(
                  color: item.purchaseDiscount > 0 ? Colors.red : Colors.black,
                  fontSize: 16),
            ),
            Padding(
              padding: EdgeInsets.all(4),
            ),
            item.purchaseDiscount > 0
                ? Text(
                    "${item.customerPrice} ${Language.myLanguage().EGP}",
                    style: TextStyle(decoration: TextDecoration.lineThrough),
                  )
                : SizedBox(),
          ],
        ),
      ],
    );
  }

//  Widget getDiscountPrice() {
//    return ;
//  }
}
