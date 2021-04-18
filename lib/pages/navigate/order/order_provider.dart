import 'package:flutter/foundation.dart';

//as category provider
class ProviderOfOrder extends ChangeNotifier {
//  List<OrderResponseModel> _listOfOrder = [];

//  List<OrderResponseModel> getList() => _listOfOrder;

  @override
  void notify() {
    notifyListeners();
  }

//  @override
//  get myList => _listOfOrder;

  getOnlineList() {}
}
