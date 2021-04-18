import 'package:flutter/material.dart';

import '../../main.dart';
import '../../model/add_remove_favourite.dart';
import '../../model/navigate_models/CategoryModels/new_items_category.dart';
import '../../model/new_model/cart_items_response.dart';
import '../../utils/DialogUtility.dart';
import '../../utils/locator.dart';

class ProviderOfItem with ChangeNotifier {
//  SharedPreferencesDomain shared = locator<SharedPreferencesDomain>();
  int _countOfCartItems = 0;
  int _quantity = 0;
  bool _favorite = false;
//  LocalCartItemsRepo _cartItemsRepo = locator<LocalCartItemsRepo>();
  bool isAdded = false;
//  var cartRepository = CartRepository();

  int get countOfCartItems {
//    _countOfCartItems = _cartItemsRepo.getCartLength();
    return _countOfCartItems;
  }

//  ProviderOfItem() {
//    getUser();
//  }
  DialogUtility dialogUtility = locator<DialogUtility>();

//  UserData userData;
//  String token;

  getCountOfCartItems() {
//    _countOfCartItems = _cartItemsRepo.getCartLength();
    return _countOfCartItems;
  }

  setCounter(int counter) => _countOfCartItems = counter;

  void increment() {
    _quantity++;
    notifyListeners();
  }

  addToCart(AllItemsDatum item, BuildContext context) async {
//    dialogUtility.showDialogFor2Seconds(context: context, msg: 'Added to cart');
//    print('fkItemId: ${item.itemId},' +
//        'fkItemPackageId: ${item.packageId}' +
//        'fkDeliveryClientId: ${MyApp.userID}' +
//        'quantity: ${_counter} ' +
//        'fkIemId: ${item.itemId},fkItemBarCodeId: ${item.itemBarCodeId},fkPackageId: ${item.packageId},' +
//        'insertDateTime: ${DateTime.parse("2020-02-29T12:15:45.100Z")},isNew: true');
    isAdded = true;

    notifyListeners();
    Future.delayed(Duration(seconds: 2), () {
      isAdded = false;
      notifyListeners();
    });

    AllProduct product = AllProduct(
        id: item.itemId,
        itemName: item.itemName,
        notes: item.notes,
        itemBarCodeId: item.itemBarCodeId,
        barCode: item.barCode,
        quantity: getQuantity(),
        customerPrice: item.customerPrice,
        itemCost: item.itemCost,
        fkCategoryId: item.fkCategoryId,
        purchaseDiscount: item.purchaseDiscount,
        packageName: item.packageName);

//    _cartItemsRepo.getCartList().add(product);
//    _cartItemsRepo.addToCartList(product);
//    _cartItemsRepo.addToSubTotal(item.customerPrice * _countOfCartItems);
//    shared.saveCartData(_cartItemsRepo.cartData);
////    getUser();
////    print(MyApp.userID);
//    var clearCart = await cartRepository.addItemToCart(
//      addItemToCartModel: AddItemToCartModel(
//          quantity: _counter,
//          fkDeliveryClientId: MyApp.userID,
//          fkIemId: item.itemId,
//          fkItemBarCodeId: item.itemBarCodeId,
//          fkPackageId: item.packageId,
//          insertDateTime: DateTime.parse("2020-02-29T12:15:45.100Z"),
//          isNew: true),
//      token: MyApp.token,
//    );
////            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJFbXBJRCI6IjM0NTM0NTMzMzAiLCJleHAiOjE1ODYxNzYxMTMsImlzcyI6IkZla3JhU29mdC5jb20iLCJhdWQiOiJGZWtyYVNvZnQuY29tIn0.9eOE5K9rXWP7xmWR2EtZSiuMpWf0UD2BtMywuD9PAok');
//    if (clearCart.status == ApiStatus.SUCCESS) {
//      print(clearCart.data.toJson());
//    } else
//      print(clearCart.error);
  }

  void decrement() {
    _quantity--;
    notifyListeners();
  }

  addToFavorite({AllItemsDatum item, BuildContext context}) async {
    print('fkItemId: ${item.itemId},' +
        'fkItemPackageId: ${item.packageId}' +
        'fkDeliveryClientId: ${MyApp.userID}');
    dialogUtility.showDialogFor2Seconds(
        context: context, msg: 'Added to Favorite');
//    getUser();
//    var categoryRepository = FavouritesRepository();
    var addFavouriteModel = AddRemoveFavouriteModel(
      fkItemId: item.itemId,
      fkItemPackageId: item.packageId,
      fkDeliveryClientId: MyApp.userID,
    );
//    var dataOrError = await categoryRepository.addFavourite(addFavouriteModel);

//    if (dataOrError.status == ApiStatus.SUCCESS) {
//      print('SUCCESS${dataOrError.data.toRawJson()}');
////      dialogUtility.showDialogFor2Seconds(
////          context: context, msg: 'Added to Favorite');
//    } else
//      print('error${dataOrError.error}');
  }

//
  getQuantity() {
    return _quantity;
  }

//  getUser() async {
//    userData = preferencesDomain.getJustUser();
//    token = await preferencesDomain.getUserToken();
//    print('user data:- ${userData.toRawJson()}\ntoken:- ${token}');
//  }
}
