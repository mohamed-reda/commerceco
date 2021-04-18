import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../main.dart';
import '../pages/navigate/category/category_items/all_items_provider.dart';
import '../pages/navigate/category/category_provider.dart';
import '../ui/localization/Language.dart';

// extends ChangeNotifier
Widget searchField(dynamic search) {
//  String searchHistory=search.searched??'';
//  String s = searchHistory;

  IconButton deleteIcon = search.searched != ''
      ? IconButton(
          icon: Icon(
            Icons.close,
            color: Colors.grey,
          ),
          onPressed: () {
            search.delete();
          },
        )
      : null;
  IconButton searchIcon = IconButton(
    icon: Icon(
      Icons.search,
      color: Colors.grey,
    ),
    onPressed: () {
      search.goSearch(search.searched);
    },
  );
  if (search.runtimeType == ItemsAfterSubCategoryProvider) {
    search = search as ItemsAfterSubCategoryProvider;
  } else {
    search = search as ProviderOfCategory;
  }
//  TextEditingController controller = new TextEditingController(text: '$searchHistory');

  return WillPopScope(
    onWillPop: () async {
      search.goSearch(search.searched);
      print('back');
      return false;
    },
    child: Container(
//    AnimatedSwitcher(
//      duration: Duration(seconds: 1),
      child: CupertinoTextField(
        style: TextStyle(fontSize: 18),
        key: UniqueKey(),
//        cursorColor: Colors.white,
//    controller: controller,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),

        textAlign: MyApp.lang == true ? TextAlign.left : TextAlign.right,
        prefix: MyApp.lang == true ? searchIcon : deleteIcon,
        suffix: MyApp.lang == true ? deleteIcon : searchIcon,
//        prefixIcon: MyApp.lang == true ? searchIcon : null,
//            suffixIcon: MyApp.lang == true ? null : searchIcon,
//            prefix: MyApp.lang == true? null : deleteIcon,
//            suffix: MyApp.lang == true? deleteIcon : null,
//        textDirection:
//            MyApp.lang == true ? TextDirection.ltr : TextDirection.rtl,
        placeholder:
//        initialValue:
            '${search.searched == '' ? Language.myLanguage().search : search.searched}',
        onSubmitted:
//        onFieldSubmitted:
            (value) {
          if (value != null) {
            search.searched = value;
            search.goSearch(search.searched);
          }
        },
        onChanged: (value) {
//    search(s);
          search.searched = value;
          if (search.searched == '') {
            search.delete();
          } else {
            search.changeDeleteTheSearch(false);
          }
          print(value);
        },
        textInputAction: TextInputAction.done,
//        decoration: new InputDecoration(
//
//            contentPadding: EdgeInsets.all(0),
//            prefixIcon: MyApp.lang == true ? searchIcon : null,
//            suffixIcon: MyApp.lang == true ? null : searchIcon,
//            prefix: MyApp.lang == true? null : deleteIcon,
//            suffix: MyApp.lang == true? deleteIcon : null,
//            border: new OutlineInputBorder(
//              borderRadius: const BorderRadius.all(
//                const Radius.circular(26.0),
//              ),
//              borderSide: BorderSide(color: Colors.white),
//            ),
//            filled: true,
//            hintStyle: new TextStyle(color: Colors.grey[800],),
//            hintText: Language.myLanguage().search,
//            fillColor: Colors.white),
      ),
    ),
  );
}
