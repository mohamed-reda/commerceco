import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:provider/provider.dart';

import '../../../model/navigate_models/CategoryModels/new_category_response.dart';
import '../../../pages/navigate/category/category_provider.dart';

// ignore: must_be_immutable
class Categories extends StatelessWidget {
  ProviderOfCategory providerOfPage;

  List<CategoryData> _listOfCategory = [];

  void langNotify() {
//    notifyChild(this.providerOfPage);
  }

  @override
  Widget build(BuildContext context) {
//    print(
//        'category buildddd: ${context.hashCode}h ${context.widget} ${context.toString()} ');
    providerOfPage = Provider.of<ProviderOfCategory>(context);
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          child: GridView.builder(
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
            itemCount: 20,
            itemBuilder: (BuildContext context, int index) {
              return columnOfGrid(context: context, count: index);
            },
          ),
        ),
//        FutureBuilder(
//          future: providerOfPage.getOnlineList(),
//          builder: (context, AsyncSnapshot<List<CategoryData>> snapshot) {
//            if (snapshot.connectionState == ConnectionState.done &&
//                snapshot.hasData) {
//              if (snapshot.data.isNotEmpty) {
//                return Expanded(
//                  child: GridView.builder(
//                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                        crossAxisCount: 3),
//                    itemCount: providerOfPage.listOfCategory.length,
//                    itemBuilder: (BuildContext context, int index) {
//                      return columnOfGrid(
//                          context: context,
//                          model: providerOfPage.listOfCategory[index]);
//                    },
//                  ),
//                );
//              } else {
//                return Expanded(
//                  child: tryAgain(
//                    () {
////                  providerOfPage.getOnlineList();
//                      snapshot.inState(ConnectionState.waiting);
//                      providerOfPage.notify();
//                    },
//                  ),
//                );
//              }
//            } else if (snapshot.connectionState == ConnectionState.waiting) {
//              return Expanded(child: circularProgress());
//            } else {
//              return tryAgain(
//                () {
////                  providerOfPage.getOnlineList();
//                  snapshot.inState(ConnectionState.waiting);
//                  providerOfPage.notify();
//                },
//              );
//            }
//          },
//        ),
        ///old search

//        Column(
//          mainAxisAlignment: MainAxisAlignment.end,
//          crossAxisAlignment: CrossAxisAlignment.end,
//          children: <Widget>[gridWithSearchDesign(providerOfPage)],
//        ),
      ],
    );
  }

  Widget columnOfGrid({BuildContext context, int count}) {
    return InkWell(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          children: <Widget>[
            Image.asset(
              'assets/category.jpg',
              fit: BoxFit.fill,
            ),
            SizedBox(
              height: 2,
            ),
            Center(
              child: Text(
                'Category ${count}',
                // style: NeumorphicStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ),
      onTap: () {
//        providerOfPage.doGetData = false;
//        if (model.hasSubCategories) {
////          Navigator.of(context).push(
////            MaterialPageRoute(
////              builder: (context) => SubCategory(
////                categoryId: model.categoryId,
////                title: model.categoryNameEng,
////              ),
////            ),
////          );
//        } else {
//          Navigator.of(context).push(
//            MaterialPageRoute(
//              builder: (context) => ItemsAfterSubCategory(
//                  categoryId: model.categoryId, title: model.categoryNameEng),
//            ),
//          );
//        }
      },
    );
  }
}

/*

  @override
  Widget build(BuildContext context) {
    print(
        'category buildddd: ${context.hashCode}h ${context.widget} ${context.toString()} ');
    providerOfPage = Provider.of<ProviderOfCategory>(context);
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        FutureProvider<List<CategoryData>>(
//          updateShouldNotify: providerOfPage,
          //                      <--- FutureProvider
          initialData: providerOfPage.listOfCategory,
          builder: (context) => providerOfPage.getOnlineList(),
          child: Consumer<List<CategoryData>>(
            builder: (context, list, child) {
              print('tttt ${child.runtimeType}');
              if (list == null) {
                return Expanded(
                  child: tryAgain(
                    () {
                      providerOfPage.getOnlineList();
//                    snapshot.inState(ConnectionState.waiting);
                      providerOfPage.notify();
                    },
                  ),
                );
              } else if (list.isNotEmpty) {
                return Expanded(
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3),
                    itemCount: list.length,
                    itemBuilder: (BuildContext context, int index) {
                      return columnOfGrid(context: context, model: list[index]);
                    },
                  ),
                );
              }
              return Expanded(child: circularProgress());
            },
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[gridWithSearchDesign(providerOfPage)],
        ),
      ],
    );
  }
  */
