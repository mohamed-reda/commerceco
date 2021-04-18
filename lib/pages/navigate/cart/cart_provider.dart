import 'package:flutter/foundation.dart';

import '../../../model/navigate_models/cart_models/data_of_cart_repo.dart';
import '../../../model/new_model/cart_items_response.dart';
//as category provider

class ProviderOfCart extends ChangeNotifier {
  DataAtCartRes _cartModel;
//  UserData _userData;

//  CartRepository _cartRepository = CartRepository();
//  SharedPreferencesDomain preferencesDomain =
//      locator<SharedPreferencesDomain>();
//  List<AllProduct> _cartModel;

  Future<DataAtCartRes> getOnlineList() async {
//    _userData = preferencesDomain.getJustUser();
//    var cartItems = await _cartRepository.getCartItemsByUserId(MyApp.userID);

//    if (cartItems.status == ApiStatus.SUCCESS) {
//      _cartModel = cartItems.data.data;
//      print(cartItems.data.data.toJson());
//    } else {
//      print('cartttt ${MyApp.userID}');
//      print(cartItems.error);
//      print(cartItems.toString);
//    }
//    return _cartModel;
  }

  DataAtCartRes getList() => _cartModel;
  void notify() {
    notifyListeners();
  }

  get myList => _cartModel;

  Future<bool> deleteItemFromCart(AllProduct item) async {
//    String token = await preferencesDomain.getUserToken();
//    var deleteItemFromCart = await _cartRepository.deleteItemFromCart(
//        deleteItemFromCartModel: DeleteItemFromCartModel(
//            fkDeliveryClientId: MyApp.userID,
//            fkIemId: item.itemId,
//            fkItemBarCodeId: item.itemBarCodeId,
//            fkPackageId: item.packageId),
//        token: MyApp.token);
//    if (deleteItemFromCart.status == ApiStatus.SUCCESS) {
//      print(deleteItemFromCart.data.toJson());
//      return true;
//    } else {
//      print(deleteItemFromCart.error);
//      return false;
//    }
  }
}
