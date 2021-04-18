import '../utils/DialogUtility.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class ConfirmOrDeny extends StatelessWidget {
  String confirmOrDenyText;
  bool confirmed;
  DialogUtility myDialog = GetIt.instance<DialogUtility>();

  ConfirmOrDeny({this.confirmOrDenyText = 'sucssees', this.confirmed = true});

  ProviderOfConfirmOrDeny providerOfConfirmOrDeny = ProviderOfConfirmOrDeny();
  bool visible = true;
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ProviderOfConfirmOrDeny>(
      create: (context) => providerOfConfirmOrDeny,
      child: Consumer<ProviderOfConfirmOrDeny>(
        key: UniqueKey(),
        builder: (context, model, child) => Scaffold(
          key: UniqueKey(),
          body: Center(
            key: UniqueKey(),
            child: Column(
              key: UniqueKey(),
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
//                AnimatedOpacity(
//                  opacity: visible ? 1 : 0,
//                  curve: Curves.easeIn,
//                  key: UniqueKey(),
//                  duration: Duration(milliseconds: 1600),
////                  duration: Duration(seconds: 9),
//                  child: Image.asset(
//                    'assets/confirmed.png',
//                    key: UniqueKey(),
//                  ),
//                ),
                Padding(
                  key: UniqueKey(),
                  padding: const EdgeInsets.only(top: 12.0),
                  child: Text(
                    '${confirmOrDenyText}',
                    key: UniqueKey(),
                  ),
                ),
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            key: UniqueKey(),
            onPressed: () {
//              setState(() =>
//              visible = !visible;
              myDialog.showDialogFor2Seconds(context: context);

//              providerOfConfirmOrDeny.changeOpacity();
//              providerOfConfirmOrDeny.notify();
            },
          ),
        ),
      ),
    );
  }
}

class ProviderOfConfirmOrDeny extends ChangeNotifier {
//  double opacity = 1.0;

  bool visible = true;

  void notify() {
    notifyListeners();
  }

  void changeOpacity() {
//    if (opacity == 0.0) {
//      opacity = 1.0;
//    } else {
//    opacity = 0.0;
//    }
    visible = !visible;
    notify();
    print('chage opacity= ${visible}');
  }
}
