/*class that will contain constant strings will be used
in different Views in application with the same value*/
enum Filter { expensive, cheap, a, z }

class Constants {
  static String get cartData=> 'CartData';

  static String get userID => 'UserID';

  static int get userIdForTestOnly => 3453453300;
  static String loginPage = '/loginPage';
  static String myHomePage = '/myHomePage';
  static String subCategory = '/subCategory';
  static String registerPage = '/registerPage';
  static String profile = '/profile';
  static String itemDetail = '/itemDetail';
  static String orderDetails = 'orderDetails';

  static String get itemsAfterSubCategory => '/itemsAfterSubCategory';
  static String get loading => '/loading';
//    static String get registerPage => 'registerPage';
//      static String myHomePage='MyHomePage';

  static String get userLanguage => "LANGUAGE";

  static String get userData => "userData";
  static String get userResponseModel => "userResponseModel";
  static String get userToken => "userToken";

//    static String get saveAreas => "keyToSaveAreas";

//    static String get saveParentCategory => "keyToSaveParentCategory";
//    static String get saveSubCategory => "keyToSavesubCategory";
//    static String get saveFavoriteList => "keyToSaveFavoriteList";
//    static String get saveOfferList => "keyToSaveOfferList";
//    static String get saveOrderList => "keyToSaveOrderList";
//    static String get saveCartList => "keyToSaveCartList";
//trueInLoginOrRegister
  static String get trueInLoginOrRegister => "trueInLoginOrRegister";
  static String get errorInApi => "errorInApi";
  static String get noInternet => "no_internet";

  static num get itemPerPage => 40;
}
