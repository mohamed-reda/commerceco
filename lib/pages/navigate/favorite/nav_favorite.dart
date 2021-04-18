import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:provider/provider.dart';

import '../../../pages/navigate/favorite/favorite_provider.dart';
import '../../../utils/delete_interface.dart';
import '../../../widgets/like_button.dart';

//as category
// ignore: must_be_immutable
class Favorite extends DeleteListInterface {
//  bool b = true;
  ProviderOfFavorite providerOfPage;

  Favorite();

  void langNotify() {
//    notifyChild(providerOfPage);
  }

  @override
  Widget build(BuildContext context) {
    providerOfPage = Provider.of<ProviderOfFavorite>(context);
    return Column(
      children: <Widget>[
        Expanded(
          flex: 1,
          child: ListView.builder(
            itemCount: 10,
            itemBuilder: (BuildContext context, int index) {
              return cardBuilder(context
//                  providerOfFavorite.getList()[index].sdxsfds
                  );
            },
          ),
        )
//        FutureBuilder(
//          future: providerOfPage.getOnlineList(),
//          builder: (context, snapshot) {
//            if (snapshot.connectionState == ConnectionState.done) {
//              if (snapshot.hasData) {
////                print('doneeeee ${providerOfPage.getList().length}');
//                if (providerOfPage.getList().isEmpty) {
//                  return tryAgain(() {
//                    providerOfPage.getOnlineList();
//                    snapshot.inState(ConnectionState.waiting);
//                    providerOfPage.notify();
//                  });
//                }
//                return
//              } else {
//                return tryAgain(() {
//                  providerOfPage.getOnlineList();
//                  snapshot.inState(ConnectionState.waiting);
//                  providerOfPage.notify();
//                });
//              }
//            } else {
//              return circularProgress();
//            }
//          },
//        ),
      ],
    );
  }

  Widget cardBuilder(context) {
//    AssetImage itemImage = AssetImage('assets/fruit.png');
    Image image = Image.asset('assets/fruit.png');
    return GestureDetector(
      onTap: () {
//        CupertinoPageRoute
//        Navigator.push(
//            context,
//            MaterialPageRoute(
//                builder: (context) => ItemDetails(imageOfHero: image)));
      },
//      onTapCancel: () {
//        Navigator.push(
//            context,
//            MaterialPageRoute(builder: (context) =>ItemDetails())
//        );},
      child: Slidable(
        actionPane: SlidableDrawerActionPane(),
        key: ObjectKey('key'),
        actionExtentRatio: 0.25,
        actions: <Widget>[
          IconSlideAction(
            caption: 'buy',
            color: Colors.red,
            icon: Icons.shopping_cart,
            onTap: () {},
          ),
        ],
        secondaryActions: <Widget>[
          IconSlideAction(
            caption: 'More',
            color: Colors.black45,
            icon: Icons.more_horiz,
            onTap: () {},
          ),
          IconSlideAction(
            caption: 'Delete',
            color: Colors.red,
            icon: Icons.delete,
            onTap: () {},
          ),
        ],
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child:
//            borderRadius: BorderRadius.circular(10),
//          shape: Border.all(color: Color(0xFFFFCC33),style: BorderStyle.solid),
//            color: Colors.white,
//            elevation: 30,
              Stack(
            alignment: Alignment.topRight,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(0.0),
                child: Row(
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Hero(
                        tag: 'ItemDetails',
//                          transitionOnUserGestures: true,

                        child: Image.asset(
                          'assets/category.jpg',
                          height: 80,
//commit
//                            image: AssetImage('assets/fruit.png'),
//        NetworkImage(
//            "https://foodrevolution.org/wp-content/uploads/2018/05/blog-featured_fruit-20180502.jpg"),
//                            filterQuality: FilterQuality.high,
                        ),
                      ),
                    ),
                    // all product detail
                    Padding(
                      padding: EdgeInsets.all(6),
                      child: Column(
                        children: <Widget>[
                          Text('Name'),
                          Text('NameEn'),
                          Padding(
                            padding: EdgeInsets.all(6),
                          ),
                          Row(
                            children: <Widget>[
                              Text(
                                "Size package",
                                style: TextStyle(color: Colors.grey),
                              ),
                              Padding(
                                padding: EdgeInsets.all(3),
                              ),
                              Text(
                                "10",
                                style: TextStyle(color: Colors.redAccent),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  SizedBox(),
                  Container(
                    child: likeButton(Icons.favorite_border, fun: () {
//                        providerOfPage.removeItemFromFavorite(favItem);
                    }
//                  color: Colors.yellow,
                        ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
