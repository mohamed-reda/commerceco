import 'dart:ui';

import 'package:commerceco/widgets/search_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../pages/home_provider.dart';
import '../widgets/bottom_navigation.dart';
import '../widgets/floating_button.dart';
import 'my_drawer.dart';

class MyHomePage extends StatefulWidget {
  static String myHomePage = 'MyHomePage';

  MyHomePage();

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  ProviderOfHome providerOfHome;
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 5);
    _tabController.animateTo(ProviderOfHome.getIndex(),
        curve: Curves.linear, duration: Duration(microseconds: 0));
  }

  @override
  Widget build(BuildContext context) {
    providerOfHome = Provider.of<ProviderOfHome>(context);
    providerOfHome.context = context;
    providerOfHome.setTabController(_tabController);
    return Scaffold(
//      appBar: AppBar(
//        actions: <Widget>[
//          floatingButton(
//            () {
//              providerOfHome.notifyLang();
//            },
//            text: Language.myLanguage().myLanguage,
//            mini: false,
//          ),
//        ],
//      ),
      key: _scaffoldKey,
      drawer: MyDrawer(_scaffoldKey, context, providerOfHome),
      body: Stack(
        children: <Widget>[
          Stack(
            children: <Widget>[
              ClipPath(
                clipper: MyCustomClipper()
                  ..begin = 10
                  ..hh = 0,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 200,
                  color: Colors.grey.withOpacity(.4),
                ),
              ),
              ClipPath(
                clipper: MyCustomClipper()
                  ..hh = 40
                  ..oneThird = MediaQuery.of(context).size.width / 3,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 180,
                  color: Colors.green.withOpacity(.8),
                ),
              ),
              ClipPath(
                clipper: MyCustomClipper()..hh = 0,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 190,
                  color: Colors.green,
                ),
              ),
              SafeArea(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12.0, vertical: 6),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      floatingButton(
                        () {
                          _scaffoldKey.currentState.openDrawer();
                        },
                        icon: Icons.dehaze,
                        color: Colors.white,
                        mini: true,
                      ),

//                              IconButton(
//                                  icon: new Icon(Icons.dehaze),
//                                  onPressed: () =>
//                                      _scaffoldKey.currentState.openDrawer()
//                              ),

                      Row(
                        children: <Widget>[
                          Stack(
                            children: <Widget>[
                              Container(
                                height: 48.00,
                                width: 48.00,
                                decoration: BoxDecoration(
//                                color: Color(0xff000000).withOpacity(0.30),
                                  border: Border.all(
                                    width: 1.00,
                                    color: Color(0xffffffff),
                                  ),
                                  borderRadius: BorderRadius.circular(80.00),
                                ),
                                child: Icon(
                                  Icons.person,
                                  size: 40,
                                ),
                              ),
                              Positioned(
                                right: 4,
                                child: Container(
                                  height: 10.00,
                                  width: 10.00,
                                  decoration: BoxDecoration(
                                    color: Color(0xffffffff),
                                    boxShadow: [
                                      BoxShadow(
                                        offset: Offset(0.00, 3.00),
                                        color:
                                            Color(0xff000000).withOpacity(0.41),
                                        blurRadius: 20,
                                      ),
                                    ],
                                    border: Border.all(
                                      width: 2.00,
                                      color: Colors.green,
                                    ),
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: 60,
                child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: Center(child: searchBar(context))),
              )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SizedBox(
                height: 150,
              ),
              Flexible(
                flex: 20,
                child: TabBarView(
                  dragStartBehavior: DragStartBehavior.start,
                  physics: NeverScrollableScrollPhysics(),
                  controller: _tabController,
                  children: providerOfHome.navigationClasses,
                ),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: myBottomNavigationBar(
          providerOfHome: providerOfHome, controller: _tabController),
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

//
//  Widget flowerWidget() {
//    //with dark mode
////    return Container(
////      height: MediaQuery.of(context).size.height,
////      width: MediaQuery.of(context).size.width,
////      child: ColorFiltered(
////        colorFilter: ColorFilter.mode(Colors.black54, BlendMode.colorBurn),
////        child: Image.asset(
////          'assets/pattern.png',
////          fit: BoxFit.cover,
////        ),
////      ),
////    );
//    //light mode
//    return Container(
//      decoration: new BoxDecoration(
//        color: Theme.of(context).backgroundColor,
//        image: new DecorationImage(
//            image: AssetImage('assets/category.jpg'), fit: BoxFit.cover),
//      ),
//      height: MediaQuery.of(context).size.height,
//      width: MediaQuery.of(context).size.width,
//      child: new BackdropFilter(
//        filter: new ImageFilter.blur(sigmaX: .5, sigmaY: .5),
//        child: new Container(
//          decoration: new BoxDecoration(color: Colors.white.withOpacity(0.0)),
//        ),
//      ),
//    );
//  }
}

class MyCustomClipper extends CustomClipper<Path> {
  double hh = 0;
  double begin = 0;
  double oneThird = 0;

  @override
  Path getClip(Size size) {
//    if (half == 0) {
//      half = size.width;
//    }
    double w = size.width;
    double h = size.height;
    var controlPoint = Offset(size.width / 2, size.height / 2);
    var endPoint = Offset(size.width, size.height);
    Path path = Path()
      ..moveTo(oneThird, 0)
      ..lineTo(oneThird, (h / 3) + begin)
      ..quadraticBezierTo(w / 2, h + begin, w, (h / 2) + hh - begin)
      ..lineTo(w, h / 2)
      ..lineTo(w, 0)
      ..close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
