import 'package:flutter/foundation.dart';

import '../../../../model/navigate_models/CategoryModels/new_category_response.dart';

class ProviderOfSubCategory extends ChangeNotifier {
  List<CategoryData> _listOfSubCategory = [];

  int _categoryID = 0;
//  bool doGetData = true;

//  set doGetData(bool value) {
//    _doGetData = value;
//  }

  ProviderOfSubCategory(int categoryId) {
    _categoryID = categoryId;
  }

//  set listOfSubCategory(List<CategoryData> value) {
//    _listOfSubCategory = value;
//  }

  List<CategoryData> get listOfSubCategory => _listOfSubCategory;

//  @override
  void notify() {
    notifyListeners();
  }

  Future<List<CategoryData>> getOnlineList() async {
//    print('yyyyou try to get items');
//    if (doGetData) {
//    if (_listOfSubCategory.isEmpty) {
//      var categoryRepository = CategoryRepository();
//      //if category hasSubCategories = true call getCategoriesInCategory(categoryId)
//      var dataOrError =
//          await categoryRepository.getCategoriesInCategory(categoryID);
//      if (dataOrError.status == ApiStatus.SUCCESS) {
//        _listOfSubCategory = dataOrError.data.data;
//        for (var item in dataOrError.data.data) {
////          print('SUCCESS${item.toRawJson()}');
//        }
//      } else {
////        print('error${dataOrError.error}');
////        return [];
//      }
//    }
//    return _listOfSubCategory;
  }

  int get categoryID => _categoryID;

  set categoryID(int value) {
    _categoryID = value;
  }

  void setCategoryID(int categoryId) {
    _categoryID = categoryId;
  }
}
