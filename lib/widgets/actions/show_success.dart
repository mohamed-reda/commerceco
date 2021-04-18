import '../../pages/item_details/item_provider.dart';
import '../../Constants/my_colors.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ShowSuccess extends StatelessWidget {
  ProviderOfItem providerOfItem;

  ShowSuccess(this.providerOfItem);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedSwitcher(
        duration: Duration(seconds: 1),
        key: UniqueKey(),
        child: providerOfItem.isAdded
            ? Container(
                key: UniqueKey(),
                width: MediaQuery.of(context).size.width,
                child: Column(
                  key: UniqueKey(),
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Image.asset(
                      'assets/confirmed.png',
                      key: UniqueKey(),
                    ),
                    Text(
                      'Added Successfully',
                      key: UniqueKey(),
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: AppColors.LightYellow),
                    ),
                  ],
                ),
              )
            : SizedBox(),
      ),
    );
  }
}
