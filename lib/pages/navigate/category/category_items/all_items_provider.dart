import 'package:flutter/material.dart';

import '../../../../model/navigate_models/CategoryModels/new_items_category.dart';

//enum Filter { Lowest price,
//Highest price, from A-Z,from Z-A,}
class ItemsAfterSubCategoryProvider extends ChangeNotifier {
  bool _grid = true;
  String searchedText;
//  bool _afterChooseFilter = true;
  bool _showFieldOfSearch = true;
  var dataOrError;

  //if index of filter is
  // 0: get 'Lowest price',
  // 1: 'Highest price',
  // 2: 'from A-Z',
  // 3: 'from Z-A',
  int _indexOfSelectedFilter = 0;
  int state = 0;
  List<String> _filterList = [
    'Lowest price',
    'Highest price',
    'from A-Z',
    'from Z-A',
  ];

//  var categoryRepository = CategoryRepository();
  List<AllItemsDatum> _listOfItems = [];

  int _categoryId;

  int get categoryId => _categoryId;

  List<AllItemsDatum> get listOfItems => _listOfItems;

//  bool _doGetData = true;

  set doGetData(bool value) {
//    _doGetData = value;
  }

  bool _deleteTheSearch = true;

  bool get deleteTheSearch => _deleteTheSearch;

  Future<List<AllItemsDatum>> getOnlineList() async {
//    print('get itemsssss');
//    switch (state) {
//      case 0:
//        {
//
//          //ToSearch// getItemFromCategory(46,0,searchText: 'Masrya')
//
//          return _listOfItems;
//        }
//        break;
//      case 1:
//        {
//          dataOrError = await categoryRepository.getItemFromCategory(
//            _categoryId,
//            0,
//          );
//        }
//        break;
//    }
//    dataOrError = await categoryRepository.getItemFromCategory(
//      _categoryId,
//      0,
//    );
//    if (state == 0) {}
//    if (dataOrError.status == ApiStatus.SUCCESS) {
//      _listOfItems = dataOrError.data.data.allItemsData;
////        for (var item in dataOrError.data.data.allItemsData){
////
////        }
////          print('SUCCESS of itemssssssss ${item.toRawJson()}');
////        print('SUCCESS of lssssssss ${_listOfItems.length}');
//      return _listOfItems;
//    } else {
//      state = 0;
//      print('error${dataOrError.error}');
//    }
    return _listOfItems;
//    doGetData = true;

//    return _categoryPresenter.getParentCategory(true);
  }

  set deleteTheSearch(bool value) {
//    if(_deleteTheSearch!=value){
//      _deleteTheSearch=value;
//      notifyListeners();
//    }
  }

  void changeDeleteTheSearch(bool value) {
    if (_deleteTheSearch != value) {
      _deleteTheSearch = value;
      notifyListeners();
    }
  }

  bool get grid => _grid;

  List<String> get filterList => _filterList;
  String _selectedFilter;
  int _iState = 0;

//  bool get afterChooseFilter => _afterChooseFilter;
//
//  set afterChooseFilter(bool value) {
//    _afterChooseFilter = value;
//  }

  ItemsAfterSubCategoryProvider({int categoryId}) {
    _categoryId = categoryId;
  }

  changeGrid(bool v) {
    _grid = v;
    notifyListeners();
  }

//  changeAfterChooseFilter() {
//    _afterChooseFilter = false;
//    notifyListeners();
//  }

  changeSearch() {
    _showFieldOfSearch = !_showFieldOfSearch;
    notifyListeners();
  }

  void selectFilter(String newValue) {
    _selectedFilter = newValue;
    _indexOfSelectedFilter = _filterList.indexOf(_selectedFilter);
    notifyListeners();
  }

  bool get showFieldOfSearch => _showFieldOfSearch;

  int get iState => _iState;

  String get selectedFilter => _selectedFilter;

  void goSearch(String s) {
    searchedText = s;
    _showFieldOfSearch = true;
    _deleteTheSearch = s.isEmpty;
    notifyListeners();
  }

  void delete() {
    searchedText = '';
    notifyListeners();
  }

  void notify() {
    notifyListeners();
  }

  void setFilterIndex(String text) {}
}
