import 'package:flutter/cupertino.dart';

import '../../../../model/new_model/cart_items_response.dart';

class ProviderOfLocalCart extends ChangeNotifier {
//  List<AllProduct> allProducts;
//  ProviderOfCartItems(this.allProducts);
//  int itemsCount = 0;
//  LocalCartItemsRepo _cartItemsRepo = locator<LocalCartItemsRepo>();
//  int length;

  List<AllProduct> list;

  int countOfCartItems() {
//    print('countttt ${_cartItemsRepo.getCartLength()}');
//    list = list ?? _cartItemsRepo.getCartList();
    return list.length;
  }

//  int getLength() {
//    return _cartItemsRepo.getCartLength();
//  }

//  set cartItems(List<AllProduct> value) {
//    _cartItemsRepo.cartData.allProducts = value;
//    //Todo I should save
//    notify();
//  }

  List<AllProduct> getCartList() {
//    return _cartItemsRepo.getCartList();
  }

  deleteFromList(int index) {
//    _cartItemsRepo.deleteProduct(index);
  }

  num getSubTotal() {
//    return _cartItemsRepo.getCartSubTotal();
  }

  num getDelivery() {
//    return _cartItemsRepo.getCartDelivery();
  }

  num getTotal() {
//    return _cartItemsRepo.getCartTotal();
  }

  void notify() {
    notifyListeners();
  }

//  ProviderOfLocalCart() {
//    List<AllProduct> list = getCartList();
//  }
}
