import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../Constants/my_colors.dart';
import '../../../../main.dart';
import '../../../../model/navigate_models/CategoryModels/new_category_response.dart';
import '../../../../pages/navigate/category/category_items/all_items_page.dart';
import '../../../../pages/navigate/category/sub_category/sub_category_provider.dart';
import '../../../../ui/localization/Language.dart';
import '../../../../widgets/app_background.dart';

// ignore: must_be_immutable
class SubCategory extends StatelessWidget {
  int categoryId;
  String title;
  String image;
//  ProviderOfSubCategory providerOfPage;
  SubCategory({
    this.categoryId,
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    ProviderOfSubCategory providerOfPage = ProviderOfSubCategory(categoryId);

    return ChangeNotifierProvider<ProviderOfSubCategory>(
      create: (context) => providerOfPage,
      child: Consumer<ProviderOfSubCategory>(
        builder: (context, model, child) => Scaffold(
          appBar: new AppBar(
            backgroundColor: Colors.deepOrangeAccent,
            title: new Text('$title'),
          ),
//          resizeToAvoidBottomPadding: true,
          body: SafeArea(
            child: Stack(
              children: <Widget>[
                AppBackground(image: 'assets/pattern.png'),
                SizedBox(
                  height: double.infinity,
                  width: double.infinity,
                  child: FutureBuilder(
                    future: providerOfPage.getOnlineList(),
                    builder:
                        (context, AsyncSnapshot<List<CategoryData>> snapshot) {
                      if (snapshot.connectionState == ConnectionState.done &&
                          snapshot.hasData) {
                        if (snapshot.data.isNotEmpty) {
                          return GridView.builder(
                            itemCount: snapshot.data.length,
                            itemBuilder: (context, int index) {
                              return columnOfGrid(
                                  providerOfPage: providerOfPage,
                                  model: snapshot.data[index],
                                  context: context);
                            },
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 3),
                            padding: EdgeInsets.all(2),
                          );
                        } else {
                          return Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                AnimatedSwitcher(
                                    duration: Duration(seconds: 1),
                                    child: Text(
                                      Language.myLanguage().tryAgain,
                                      key: UniqueKey(),
                                    )),
                                Padding(
                                  padding: const EdgeInsets.only(right: 18.0),
                                  child: IconButton(
                                    icon: Icon(
                                      Icons.cached,
                                      size: 50,
                                      color: AppColors.DarkYellow,
                                    ),
                                    onPressed: () {
//                                      providerOfPage.getOnlineList();
                                      snapshot.inState(ConnectionState.waiting);
                                      providerOfPage.notify();
                                    },
                                  ),
                                ),
                              ],
                            ),
                          );
                        }
                      } else if (snapshot.connectionState ==
                          ConnectionState.waiting) {
                        return Center(
                          child: CircularProgressIndicator(
                            valueColor:
                                AlwaysStoppedAnimation<Color>(Colors.yellow),
                          ),
                        );
                      } else {
                        return Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              AnimatedSwitcher(
                                duration: Duration(seconds: 1),
                                child: Text(
                                  Language.myLanguage().tryAgain,
                                  key: UniqueKey(),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 18.0),
                                child: IconButton(
                                  icon: Icon(
                                    Icons.cached,
                                    size: 50,
                                    color: AppColors.DarkYellow,
                                  ),
                                  onPressed: () {
//                                    providerOfPage.getOnlineList();
                                    snapshot.inState(ConnectionState.waiting);
                                    providerOfPage.notify();
                                  },
                                ),
                              ),
                            ],
                          ),
                        );
                      }
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget columnOfGrid(
      {ProviderOfSubCategory providerOfPage,
      CategoryData model,
      image = 'assets/meat.png',
      BuildContext context}) {
    return GestureDetector(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Image.asset(
              image,
              fit: BoxFit.fill,
            ),
            SizedBox(
              height: 4,
            ),
            Center(
              child:
                  Text(MyApp.lang ? model.categoryNameEng : model.categoryName),
            ),
          ],
        ),
      ),
      onTap: () {
//        providerOfPage.doGetData = false;
        if (model.hasSubCategories) {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => SubCategory(
                categoryId: model.categoryId,
                title: model.categoryNameEng,
              ),
            ),
          );
        } else {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => ItemsAfterSubCategory(
                  categoryId: model.categoryId, title: model.categoryNameEng),
            ),
          );
        }
      },
    );
  }
}

/*

import 'dart:ui';

import '../../../../pages/navigate/category/sub_category/sub_category_provider.dart';
import '../../../../widgets/app_background.dart';
import '../../../../widgets/get_data_from_internet.dart';
import '../../../../widgets/try_again.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class SubCategory extends StatelessWidget {
  int categoryId;
  String title;
  String image;

  SubCategory({
    this.categoryId,
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    ProviderOfSubCategory providerOfPage = ProviderOfSubCategory(categoryId);
//    providerOfPage = Provider.of<ProviderOfSubCategory>(context);
//    providerOfPage.setCategoryID(categoryId);
//    var gridViewDesign = //grid design
//        FutureBuilder(
//      future: CategoryService.getChidCategories(ParentCatID),
//      initialData: new ApiResponse<List<ParentCategoryModel>>(),
//      builder: (BuildContext context,
//          AsyncSnapshot<ApiResponse<List<ParentCategoryModel>>> snapShot) {
//        if (snapShot.hasData &&
//            snapShot.data != null &&
//            snapShot.data.data != null) {
//          if (snapShot.data.hasErrors) {
//            return new Center(
//              child: Text(snapShot.data.message),
//            );
//          }
//          return new CategoryGridView(context, snapShot.data.data)
//              .build(context);
//        } else if (snapShot.data.message != null &&
//            snapShot.data.message.isNotEmpty)
//          return new Center(
//            child: new Text(snapShot.data.message),
//          );
//
//        // else if (snapShot.data.hasErrors)
//        //   return new Center(
//        //     child: new Text(snapShot.data.message),
//        //   );
//        else
//          return new Center(
//            child: new CircularProgressIndicator(),
//          );
//      },
//    );
    // design
//    var future = ;
    return ChangeNotifierProvider<ProviderOfSubCategory>(
      builder: (context) => providerOfPage,
      child: Consumer<ProviderOfSubCategory>(
        builder: (context, model, child) => Scaffold(
          appBar: new AppBar(
            backgroundColor: Colors.deepOrangeAccent,
            title: new Text('$title'),
          ),
//          resizeToAvoidBottomPadding: true,
          body: SafeArea(
            child: Stack(
              children: <Widget>[
                AppBackground(image: 'assets/pattern.png'),
                SizedBox(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: FutureBuilder(
                    future: providerOfPage.getOnlineList(),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.done &&
                          snapshot.hasData) {
                        return GridView.builder(
                          itemCount: providerOfPage.listOfSubCategory.length,
                          itemBuilder: (context, int index) {
                            return columnOfGrid(
                                text: providerOfPage
                                    .listOfSubCategory[index].categoryName);
                          },
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 3),
                          padding: EdgeInsets.all(2),
                        );
                      } else if (snapshot.connectionState ==
                          ConnectionState.waiting) {
                        return Center(child: circularProgress());
                      } else {
                        return tryAgain(
                          () {
                            providerOfPage.getOnlineList();
                            snapshot.inState(ConnectionState.waiting);
                            providerOfPage.notify();
                          },
                        );
                      }
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

//  Widget flowerWidget() {
//    return Expanded(
//      child: Container(
//        decoration: new BoxDecoration(
//          // dependency on inherited widget - start
////          color: Theme.of(context).backgroundColor,
//          // dependency on inherited widget - end
//          image: new DecorationImage(
//            // dependency on data from widget - start
//              image: AssetImage('assets/pattern.png'),
//              // dependency on data from widget - end
//              fit: BoxFit.fitWidth),
//        ),
////      height: MediaQuery.of(context).size.height,
////      width: MediaQuery.of(context).size.width,
//        child: new BackdropFilter(
//          // dependency on state data - start
//          filter: new ImageFilter.blur(sigmaX: .5, sigmaY: .5),
//          // dependency on state data - end
//          child: new Container(
//            decoration: new BoxDecoration(color: Colors.white.withOpacity(0.0)),
//          ),
//        ),
//      ),
//    );
//  }
  Widget columnOfGrid({String image = 'assets/meat.png', String text}) {
    return InkWell(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Image.asset(
              image,
              fit: BoxFit.fill,
            ),
            SizedBox(
              height: 4,
            ),
            Center(
              child: Text(text),
            ),
          ],
        ),
      ),
      onTap: () {},
    );
  }
}

 */
