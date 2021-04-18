import 'package:flutter/foundation.dart';

import '../../../domain/domain_shared_preferences.dart';
import '../../../model/add_remove_favourite.dart';
import '../../../model/favorites_response_model.dart';
import '../../../model/user/user_data.dart';
import '../../../utils/locator.dart';

//as category provider
class ProviderOfFavorite extends ChangeNotifier {
//  FavoritePresenter _favoritePresenter;
  List<FavoriteItem> _listOfFavorite;
  SharedPreferencesDomain _preferencesDomain =
      locator<SharedPreferencesDomain>();
  UserData _userData;

//  FavouritesRepository _categoryRepository = FavouritesRepository();
  Future<FavoritesResponseModelByReda> getOnlineList() async {
//    _userData = _preferencesDomain.getJustUser();
//    var dataOrError = await _categoryRepository.getAllFavourite(
//        userId: _userData.delClientId);
//    if (dataOrError.status == ApiStatus.SUCCESS) {
////      print('SUCCESS${dataOrError.data.toRawJson()}');
//    } else {
////      print('errorr:- ${dataOrError.error}');
////      print('errorr:- ${dataOrError.error}');
//
//    }
//    _listOfFavorite = dataOrError.data.data;
//    return dataOrError.data;
  }

  List<FavoriteItem> getList() => _listOfFavorite;

//      print('rrrrrrr ${listOfFavorite.toString()}');
//      print('oooooooooooo ${listOfFavorite[0].toString()}');
//      print('id ${listOfFavorite[0].id}');
//      print('fkDeliveryClientId ${listOfFavorite[0].fkDeliveryClientId}');
//      print('fkItem ${listOfFavorite[0].fkItem}');
//      print('fkItemId ${listOfFavorite[0].fkItemId}');
//      print('fkItemPackageId ${listOfFavorite[0].fkItemPackageId}');
//      print('insDateTime ${listOfFavorite[0].insDateTime}');

  void notify() {
    notifyListeners();
  }

  removeItemFromFavorite(FavoriteItem item) async {
    _userData = _preferencesDomain.getJustUser();
    var addFavouriteModel = AddRemoveFavouriteModel(
      fkItemId: item.itemId,
      fkItemPackageId: item.fkCategoryId,
      fkDeliveryClientId: _userData.delClientId,
    );
//    var dataOrError =
//        await _categoryRepository.removeFavourite(addFavouriteModel);
//    if (dataOrError.status == ApiStatus.SUCCESS) {
//      print('SUCCESS:- ${dataOrError.data.toRawJson()}');
//    } else
//      print('error${dataOrError.error}');
//    return;
  }
}
