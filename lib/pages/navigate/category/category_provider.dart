import 'package:flutter/foundation.dart';

import '../../../model/navigate_models/CategoryModels/new_category_response.dart';

class ProviderOfCategory extends ChangeNotifier {
//  CategoryPresenter _categoryPresenter;
  List<CategoryData> _listOfCategory = [];
//  bool _doGetData = true;

  set doGetData(bool value) {
//    _doGetData = value;
  }

  set listOfSubCategory(List listOfSubCategory) {
    _listOfCategory = listOfSubCategory;
  }

  setListOfCategory(List<CategoryData> value) {
    _listOfCategory = value;
  }

  String _searched = '';
  bool _showFieldOfSearch;

  Future<List<CategoryData>> getOnlineList() async {
//    categoryRepository.getAllCategories().then((cat){
//
//    });
//    if (_doGetData) {
    if (_listOfCategory.isEmpty) {
//      print('yyyyou try to get category data');
//      var categoryRepository = CategoryRepository();
//      ResponseApi<CategoryResponse> dataOrError =
//          await categoryRepository.getAllCategories();
//      if (dataOrError.status == ApiStatus.SUCCESS) {
//        _listOfCategory = dataOrError.data.data;
//
////        for (var item in dataOrError.data.data)
////          print('SUCCESS${item.categoryName}');
//      } else {
////        print('error${dataOrError.error}');
//      }
    }
    doGetData = true;
    return _listOfCategory;
//    return _categoryPresenter.getParentCategory(true);
  }

  List<CategoryData> get listOfCategory => _listOfCategory;

//  @override
  void notify() {
    notifyListeners();
  }

  bool _deleteTheSearch = true;

  bool get deleteTheSearch => _deleteTheSearch;

  set deleteTheSearch(bool value) {
    if (_deleteTheSearch != value) {
      _deleteTheSearch = value;
      notifyListeners();
    }
  }

  void changeDeleteTheSearch(bool value) {
    if (_deleteTheSearch != value) {
      _deleteTheSearch = value;
//      notifyListeners();
    }
  }

  void delete() {
    searched = '';
    _deleteTheSearch = true;
    notifyListeners();
  }

  void goSearch(String s) {
    _searched = s;
    _showFieldOfSearch = true;
    _deleteTheSearch = s.isEmpty;
    notifyListeners();
  }

  bool get showFieldOfSearch => _showFieldOfSearch;

  String get searched => _searched;

  set searched(String value) {
    _searched = value;
  }

  @override
  // TODO: implement myList
  get myList => listOfCategory;

  @override
  void convertTheData() {
    // TODO: implement convertTheData
  }
}
