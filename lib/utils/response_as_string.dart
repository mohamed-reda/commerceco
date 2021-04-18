//import 'dart:convert';
//
//import 'package:elgelany/Constants/Constants.dart';
////import 'package:elgelany/model/navigate_models/CategoryModels/parentModel.dart';
//
//convertTheResponse(thisIs, ,Function setList,String resStr,dynamic parentModel,Function fun){
//  List<parentModel>myList=[];
//  thisIs.boolGetFromInternet((resStr == Constants.noInternet) ? false : true);
////    List<parentModel> _parentCategory = [];
//  if (!(resStr == Constants.errorInApi ||
//      resStr == Constants.noInternet ||
//      resStr == null) ||
//      resStr == "") {
//    var _jsonData = jsonDecode(resStr);
//    for (var _item in _jsonData["data"]) {
//      parentModel =
//      fun(_item);
//      myList.add(parentModel);
//    }
//    setList(myList);
//  }
//}