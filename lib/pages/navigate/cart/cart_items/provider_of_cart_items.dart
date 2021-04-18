import '../../../../model/new_model/cart_items_response.dart';
import 'package:flutter/foundation.dart';

class ProviderOfCartItems extends ChangeNotifier {
//  List<AllProduct> allProducts;
//  ProviderOfCartItems(this.allProducts);

  void notify() {
    notifyListeners();
  }

//  get myList => _cartModel;

  deleteItemFromCart(AllProduct item) async {}
}
