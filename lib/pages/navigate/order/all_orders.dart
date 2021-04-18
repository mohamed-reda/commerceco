import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../../widgets/items_of_order.dart';
import '../../../widgets/profile_red_button.dart';

// ignore: must_be_immutable
class AllOrders extends StatefulWidget {
  @override
  AllOrdersState createState() => AllOrdersState();
}

// SingleTickerProviderStateMixin is used for animation
class AllOrdersState extends State<AllOrders>
    with SingleTickerProviderStateMixin {
  /*
   *-------------------- Setup Tabs ------------------*
   */
  // Create a tab controller

  TabController _tabController;
//  ProviderOfAllOrder providerOfAllOrder;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 2);
    _tabController.animateTo(0,
        curve: Curves.linear, duration: Duration(microseconds: 0));
    // Initialize the Tab Controller
  }

  @override
  Widget build(BuildContext context) {
//    providerOfAllOrder = Provider.of<ProviderOfAllOrder>(context);
//    providerOfAllOrder.setTabController(_tabController);
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            profileRedButton(
                text: 'Previous History',
                fun: () {
                  _tabController.animateTo(0,
                      curve: Curves.linear,
                      duration: Duration(milliseconds: 1500));
                }),
            profileRedButton(
                text: 'Current history',
                right: false,
                fun: () {
                  _tabController.animateTo(1,
                      curve: Curves.linear,
                      duration: Duration(milliseconds: 1500));
                }),
          ],
        ),
        Expanded(
          child: TabBarView(
            dragStartBehavior: DragStartBehavior.start,
            controller: _tabController,
            children: <Widget>[
              First(),
              Second(),
            ],
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    // Dispose of the Tab Controller
    _tabController.dispose();
    super.dispose();
  }
}

class First extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          itemOfOrder(
            context,
            true,
          ),
        ],
      ),
    );
  }
}

class Second extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          itemOfOrder(
            context,
            true,
          ),
          itemOfOrder(
            context,
            true,
          ),
          itemOfOrder(
            context,
            true,
          ),
        ],
      ),
    );
  }
}
