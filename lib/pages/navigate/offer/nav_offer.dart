import 'package:flutter/material.dart';

// import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:provider/provider.dart';

import 'offer_provider.dart';

// ignore: must_be_immutable
class Offers extends StatelessWidget {
//  void langNotify() {
//    notifyChild(_);
//  }
  ProviderOfOffer providerOfPage;

  @override
  Widget build(BuildContext context) {
    providerOfPage = Provider.of<ProviderOfOffer>(context);

    return Column(
      children: <Widget>[
        Container(
          child: Expanded(
            child: GridView(
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 130,
                mainAxisSpacing: 5,
                crossAxisSpacing: 5,
              ),
              children: <Widget>[
                gridViewRow(context),
                gridViewRow(context),
                gridViewRow(context),
                gridViewRow(context),
                gridViewRow(context),
                gridViewRow(context),
                gridViewRow(context),
                gridViewRow(context),
              ],

//                      controller: scrollController,
            ),
          ),
        ),
//        FutureBuilder(
//          future: providerOfPage.getOnlineList(),
//          builder: (context, snapshot) {
//            if (snapshot.connectionState == ConnectionState.waiting) {
//              return Center(child: circularProgress());
//            } else if (snapshot.connectionState == ConnectionState.done &&
//                snapshot.hasData) {
//              if (providerOfPage.getList().isEmpty) {
//                return Center(
//                  child: tryAgain(() {
////                      providerOfPage.getOnlineList();
//                    snapshot.inState(ConnectionState.waiting);
//                    providerOfPage.notify();
//                  }, message: 'No items Here'),
//                );
//              } else {
////                  providerOfPage.currentPage++;
//                return ;
//              }
//            } else {
//              return tryAgain(() {
////                  providerOfPage.getOnlineList();
//                snapshot.inState(ConnectionState.waiting);
//                providerOfPage.notify();
//              });
//            }
////             else {
////              return Center(child: circularProgress());
////            }
//          },
//        ),
      ],
    );
  }

  Widget gridViewRow(BuildContext context) {
    return Container(
      child: InkWell(
        onTap: () {},
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Image.asset(
                'assets/category.jpg',
                height: 60,
                fit: BoxFit.fill,
              ),
            ),
            Text(
              'Name',
              style: TextStyle(fontSize: 14),
            ),
            Text(
              'price 100\$',
              style: TextStyle(color: Colors.red, fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }
//  ProviderOfOffer providerOfPage;

//  ScrollController scrollController = ScrollController();

//  @override
//  void initState() {
//    // TODO: implement initState
//    super.initState();
//    scrollController.addListener(() {
//      if (scrollController.position.pixels ==
//          scrollController.position.maxScrollExtent) {
////git data ,add
////        if (providerOfPage != null) {
////          providerOfPage.getMoreOnlineList();
////        }
//      }
//    });
//  }

}

/// paging
//class ListAsPages extends StatefulWidget {
//  @override
//  _ListAsPagesState createState() => new _ListAsPagesState();
//}
//
//class _ListAsPagesState extends State<ListAsPages> {
//  int present = 0;
//  int perPage = 15;
//  ScrollController scrollController;
//  final originalItems = List<String>.generate(10000, (i) => "Item $i");
//  var items = List<String>();
//
//  @override
//  void dispose() {
//    scrollController.dispose();
//    // TODO: implement dispose
//    super.dispose();
//  }
//
//  @override
//  void initState() {
//    super.initState();
//    scrollController = ScrollController();
//    scrollController.addListener(() {
//      if (scrollController.position.pixels ==
//          scrollController.position.maxScrollExtent) {
//        setState(() {
//          if ((present + perPage) > originalItems.length) {
//            items.addAll(originalItems.getRange(present, originalItems.length));
//          } else {
//            items.addAll(originalItems.getRange(present, present + perPage));
//          }
//          present = present + perPage;
//        });
//      }
//    });
//    setState(() {
//      items.addAll(originalItems.getRange(present, present + perPage));
//      present = present + perPage;
//    });
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return new Scaffold(
//      appBar: new AppBar(
//        title: new Text('title'),
//      ),
//      body: ListView.builder(
//        controller: scrollController,
//        itemCount:
//            (present <= originalItems.length) ? items.length + 1 : items.length,
//        itemBuilder: (context, index) {
//          return (index == items.length)
//              ? Container(
//                  color: Colors.greenAccent,
//                )
//              : ListTile(
//                  title: Text('${items[index]}'),
//                );
//        },
//      ),
//    );
//  }
//}
