import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../Constants/my_colors.dart';
import '../../../../main.dart';
import '../../../../model/navigate_models/CategoryModels/new_items_category.dart';
import '../../../../pages/item_details/item_details.dart';
import '../../../../pages/navigate/category/category_items/all_items_provider.dart';
import '../../../../ui/localization/Language.dart';
import '../../../../widgets/app_background.dart';
import '../../../../widgets/floating_button.dart';
import '../../../../widgets/get_data_from_internet.dart';
import '../../../../widgets/search_field.dart';
import '../../../../widgets/try_again.dart';

//import 'package:cached_network_image/cached_network_image.dart';
// ignore: must_be_immutable
class ItemsAfterSubCategory extends StatelessWidget {
  int categoryId;
  String title;

  ItemsAfterSubCategory({this.categoryId, this.title});

//  bool b = true;
  ItemsAfterSubCategoryProvider itemsAfterSubCategoryProvider;

  @override
  Widget build(BuildContext context) {
    itemsAfterSubCategoryProvider =
        ItemsAfterSubCategoryProvider(categoryId: categoryId);

//    return WillPopScope(
//      onWillPop: () async {
//        print('the big back');
//        return true;
//      },
//      child:
    return ChangeNotifierProvider<ItemsAfterSubCategoryProvider>(
      create: (context) => itemsAfterSubCategoryProvider,
      child: Consumer<ItemsAfterSubCategoryProvider>(
        builder: (context, model, child) => Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: AppColors.DarkYellow,
            actions: <Widget>[
              Expanded(
                child: Stack(
                  children: <Widget>[
                    itemsAfterSubCategoryProvider.showFieldOfSearch
                        ? Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 12),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    floatingButton(
                                      () {
                                        Navigator.pop(context);
                                      },
                                      icon: Icons.arrow_back,
                                      color: Colors.white,
                                    ),
                                    floatingButton(
                                      () {
                                        itemsAfterSubCategoryProvider
                                            .changeGrid(true);
                                      },
                                      icon: Icons.format_list_bulleted,
                                      color: Colors.white,
                                    ),
                                    floatingButton(
                                      () {
                                        itemsAfterSubCategoryProvider
                                            .changeGrid(false);
                                      },
                                      icon: Icons.view_module,
                                      color: Colors.white,
                                    ),
                                    Text(
                                      itemsAfterSubCategoryProvider
                                              .selectedFilter ??
                                          '',
                                      style: TextStyle(fontSize: 16),
                                    ),
                                    SizedBox(
                                      height: 32,
                                      child: PopupMenuButton<String>(
                                        padding: EdgeInsets.all(0.0),
                                        icon: Icon(
                                          Icons.sort,
                                          color: Colors.white,
                                          size: 28,
                                        ),
                                        itemBuilder: (context) =>
                                            itemsAfterSubCategoryProvider
                                                .filterList
                                                .map((string) => PopupMenuItem(
                                                      value: string,
                                                      child: Text(
                                                        '$string',
                                                        style: TextStyle(
                                                            fontSize: 18),
                                                      ),
                                                    ))
                                                .toList(),
                                        onSelected: (String text) {
//                                          itemsAfterSubCategoryProvider.setFilterIndex(text);
                                          itemsAfterSubCategoryProvider
                                              .selectFilter(text);
                                        },
//                                              (text) => print('hellllllo')
//                Navigator.pushNamed(context, popupMenu[text])
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Text(
//                                    itemsAfterSubCategoryProvider.searchedText
//                                            .substring(0, 4) ??
                                    '',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                  floatingButton(
                                    () {
                                      itemsAfterSubCategoryProvider
                                          .changeSearch();
                                    },
                                    icon: Icons.search,
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                            ],
                          )
                        : Padding(
                            padding: const EdgeInsets.all(4),
                            child: searchField(itemsAfterSubCategoryProvider),
                          ),
                  ],
                ),
              ),
            ],
          ),
//          itemsAfterSubCategoryProvider.grid
//                  ?
          body: Stack(
            children: <Widget>[
              AppBackground(
                image: 'assets/pattern.png',
              ),
              FutureBuilder(
                future: itemsAfterSubCategoryProvider.getOnlineList(),
                builder:
                    (context, AsyncSnapshot<List<AllItemsDatum>> snapshot) {
                  if (snapshot.connectionState == ConnectionState.done &&
                      snapshot.hasData) {
                    if (snapshot.data.isEmpty) {
                      return Center(
                        child: tryAgain(() {
                          snapshot.inState(ConnectionState.waiting);
//                          itemsAfterSubCategoryProvider.getOnlineList();
                          itemsAfterSubCategoryProvider.notify();
                        }, message: 'There is no data here'),
                      );
                    }
                    return Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Column(
                        children: <Widget>[
                          Expanded(
                            child: GridView.builder(
//
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount:
                                          itemsAfterSubCategoryProvider.grid
                                              ? 5
                                              : 3,
                                      mainAxisSpacing: 0,
                                      crossAxisSpacing: 0,
                                      childAspectRatio: 1 / 9),
                              itemCount: itemsAfterSubCategoryProvider
                                  .listOfItems.length,
                              itemBuilder: (BuildContext context, int index) {
                                return productOfItemsGrid(
                                    context: context,
                                    item: itemsAfterSubCategoryProvider
                                        .listOfItems[index]);
                              },
                            ),
                          )
                        ],
                      ),
                    );
                  } else if (snapshot.connectionState ==
                      ConnectionState.waiting) {
                    return circularProgress();
                  } else {
                    return Center(
                      child: tryAgain(
                        () {
//                  providerOfPage.getOnlineList();
                          snapshot.inState(ConnectionState.waiting);
                          itemsAfterSubCategoryProvider.notify();
                        },
                      ),
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget productOfItemsGrid({BuildContext context, AllItemsDatum item}) {
//    print('hereeeee');
    Image image = Image.asset(
      'assets/fruit.png'
//              'https://4.imimg.com/data4/JH/YO/MY-12494687/packaged-product-photography-services-500x500.jpg'
      ,
      fit: BoxFit.contain,
//                height: itemsAfterSubCategoryProvider.grid ? 28 : 70,
    );
    UniqueKey heroKey = UniqueKey();
    return InkWell(
      child: GridTile(
        child: Column(children: <Widget>[
//            DecorationImage(
//              image: AssetImage(''),
//            ),
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Hero(
              child: image,
              tag: heroKey,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 2),
            child: Text(
              MyApp.lang ? item.itemNameEn : item.itemName,
//            'itemName',
//                lstOfItems[index].itemName,
              style: TextStyle(fontSize: 11),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 2),
          ),
          Text(
            '100 ${Language.myLanguage().EGP}',
//                "${lstOfItems[index].customerPrice} ${Language.Lang().EGP}",
            style: TextStyle(color: Colors.red, fontSize: 11),
          ),
        ]),
      ),
      onTap: () {
        Navigator.of(context).push(
          (MaterialPageRoute(
            builder: (context) => ItemDetails(
              imageOfHero: image,
              tag: heroKey,
              item: item,
            ),
          )),
        );
      },
    );
  }
}
