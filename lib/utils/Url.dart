class Url {
  // static String _BaseUrl = "http://192.168.1.20/ourcartapp";
  static String _baseUrl = "http://fekrasoft-001-site20.gtempurl.com";

  static String get resetPasswordUrl =>
      '$_baseUrl/api/Account/ResetPassword'; //post

  // account urls
  // can get all accounts and update and delete account with only change method
  // static String get account_url => "$_BaseUrl/api/Account"; // get/ post /delete/ put
  static String get loginUrl => "$_baseUrl/api/Account/login"; // post
  static String get registerUrl => "$_baseUrl/api/Account/create"; // post
  static String get changePasswordUrl =>
      "$_baseUrl​/api​/Account​/changePassword"; // post
  static String get updateUserDataUrl => '$_baseUrl/api/Account/UpdateUserData';
  static String get getUserDataUrl => '$_baseUrl/api/Account/GetUserData';
  static String forgotPasswordUrl(String email) =>
      "$_baseUrl/api/Account/ForgotPassword?email=$email"; // get

  // Area get all areas in api
  static String get areasUrl =>
      "$_baseUrl/api/area"; //_BaseUrl+"​/api​/Area"; // get

  //Cart
  static String get cartUrl => "$_baseUrl​/api/Cart";

  static String get addCartUrl => "$_baseUrl​/api/Cart/Create"; //post
  static String get removeFromCartUrl => "$_baseUrl​/api/Cart/delete"; //post

  static String getUserCartUrl(int userID) {
    // get
    return "$_baseUrl​/api​/Cart​/getCartItemsByUserID?userID=$userID";
  }

  // Favourite
  static String get addFavUrl => "$_baseUrl/api/Favourites/create"; // post
  static String get deleteItemFromFavUrl =>
      "$_baseUrl/api/Favourites/remove"; // post
  static String get getFavStatusUrl =>
      "$_baseUrl/api​/Favourites​/getItemStatus"; // delete
  static String getAllFavUrl(num userID) {
    // get
    return "$_baseUrl/api/Favourites/getAll?userID=${userID.toString()}";
  }

  static String get updateFavUrl => "$_baseUrl/api/Favourites"; // update

//   //Category
// //get post delete update
//   static String get allCategoryUrl => "$_baseUrl/api/Category";

  static String get allCategoryUrl => "$_baseUrl/api/Category/GetCategories";
  static String getCategoryUrl(int categoryId) =>
      "$_baseUrl/api/Category/GetCategories?parentCatID=$categoryId"; //get
  static String getItemsInCategory(
          int categoryId, int pageNum, int itemsPerPage, String searchText) =>
      '$_baseUrl/api/Category/getItems?catID=$categoryId&pageNum=$pageNum&itemsPerPage=$itemsPerPage&SearchText=$searchText';
  static String searchItemUrl(String query) =>
      '$_baseUrl/api/Category/SearchItem?SearchText=$query';
  static String childCategoriesUrl(int parentCatID) {
    // get
    return "$_baseUrl/api/Category/GetCategories?parentcatid=$parentCatID";
  }

  static String getItemsInCategoryUrl(
      int catID, int pageNum, int itemsPerPage) {
    // get
    //http://fekrasoft-001-site20.gtempurl.com/api/Category/getItems?catId=45&pageNum=0&itemsPerPage=20
    return "$_baseUrl/api/Category/getItems?catId=$catID&pageNum=$pageNum&itemsPerPage=$itemsPerPage";
  }

  //Favouriteis
  static String get favUrl => "$_baseUrl​/api/Favourites";
  static String getFavourites(int userId) =>
      '$_baseUrl/api/Favourites/getAll?userID=$userId';

  // Offers
  static String getOffersUrl(int pageNum, int itemsPErPage) {
    // get
    return '$_baseUrl/api/Offers?pageNum=$pageNum&itemsPerPage=$itemsPErPage';
//    return "$_baseUrl​/api/Offers?pageNum=$pageNum&itemsPerPage=$itemsPErPage";
  }

  static String getHistoryOrdersUrl(num _deliveryClientID) {
    // get
    return '$_baseUrl/api/Orders/history?deliveryClientID=$_deliveryClientID';
  }

  ////////Cart
  static String get addItemToCartUrl => "$_baseUrl/api/Cart/Create";

  static String get deleteItemFromCartUrl => "$_baseUrl/api/Cart/delete";

  static String getUSerCartUrl(num userID) {
    return "$_baseUrl/api/Cart/getCartItemsByUserID?userID=${userID.toString()}";
  }

  //checkout
  static String checkoutOrderUrl(num userID) {
    return "$_baseUrl/api/Orders/checkout?deliveryClientID=${userID.toString()}";
  }

  static String deleteHistoryOrderUrl(num userID, num headerId) =>
      'http://fekrasoft-001-site20.gtempurl.com/api/Orders/DeleteHistoryOrder?UserId=$userID&HeaderId=$headerId';

  static String get orderHistoryUrl =>
      'http://fekrasoft-001-site20.gtempurl.com/api/Orders/history';

  static String get checkoutUrl =>
      'http://fekrasoft-001-site20.gtempurl.com/api/Orders/checkout';
  static String getCartItemsUrl(num userID) =>
      'http://fekrasoft-001-site20.gtempurl.com/api/cart/getCartItemsByUserID?userID=$userID';

  static String get clearCartForUserUrl =>
      'http://fekrasoft-001-site20.gtempurl.com/api/Cart/DeleteUserCart';
//
//  static String get addItemToCartUrl =>
//      'http://fekrasoft-001-site20.gtempurl.com/api/Cart/Create';

  static String get deleteItemToCartUrl =>
      'http://fekrasoft-001-site20.gtempurl.com/api/Cart/DeleteItemFromCart';

  static String get updateItemToCartUrl =>
      'http://fekrasoft-001-site20.gtempurl.com/api/Cart/UpdateItemInCart';
}

/*
class Url {
  // static String _BaseUrl = "http://192.168.1.20/ourcartapp";
  static String _baseUrl = "http://fekrasoft-001-site20.gtempurl.com";

  // account urls
  // can get all accounts and update and delete account with only change method
  // static String get account_url => "$_BaseUrl/api/Account"; // get/ post /delete/ put
  static String get loginUrl => "$_baseUrl/api/Account/login"; // post
  static String get registerUrl => "$_baseUrl/api/Account/create"; // post
  static String get updateUserDataUrl => '$_baseUrl/api/Account/UpdateUserData';
  static String get changePasswordUrl => '$_baseUrl/api/Account/changePassword'; //post
  static String get getUserDataUrl => '$_baseUrl/api/Account/GetUserData';
  static String get resetPasswordUrl => '$_baseUrl/api/Account/ResetPassword';//post

  static String forgotPasswordUrl(String email) =>
      "$_baseUrl/api/Account/ForgotPassword?email=$email"; // get

  // Area get all areas in api
  static String get areasUrl =>
      "$_baseUrl/api/area"; //_BaseUrl+"​/api​/Area"; // get

  //Cart
  static String get cartUrl => "$_baseUrl​/api/Cart";

  static String get addCartUrl => "$_baseUrl​/api/Cart/Create"; //post
  static String get removeFromCartUrl => "$_baseUrl​/api/Cart/delete"; //post

  static String getUserCartUrl(int userID) {
    // get
    return "$_baseUrl​/api​/Cart​/getCartItemsByUserID?userID=$userID";
  }

  // Favourite
  static String get addFavUrl => "$_baseUrl/api/Favourites/create"; // post
  static String get deleteItemFromFavUrl =>
      "$_baseUrl/api/Favourites/remove"; // delete
  static String get getFavStatusUrl =>
      "$_baseUrl/api​/Favourites​/getItemStatus"; // delete
  static String getAllFavUrl(num userID) {
    // get
    return "$_baseUrl/api/Favourites/getAll?userID=${userID.toString()}";
  }

  static String get updateFavUrl => "$_baseUrl/api/Favourites"; // update

  //Category
//get post delete update
  static String get allCategoryUrl => "$_baseUrl/api/Category";

  static String get parentCategoryUrl => "$_baseUrl/api/Category/GetCategories";

  static String childCategoriesUrl(int parentCatID) {
    // get
    return "$_baseUrl/api/Category/GetCategories?parentcatid=$parentCatID";
  }

  static String getItemsInCategoryUrl(
      int catID, int pageNum, int itemsPerPage) {
    // get
    //http://fekrasoft-001-site20.gtempurl.com/api/Category/getItems?catId=45&pageNum=0&itemsPerPage=20
    return "$_baseUrl/api/Category/getItems?catId=$catID&pageNum=$pageNum&itemsPerPage=$itemsPerPage";
  }

  //Favouriteis
  static String get favUrl => "$_baseUrl​/api/Favourites";

  // Offers
  static String getOffersUrl(int pageNum, int itemsPErPage) {
    // get
    return "$_baseUrl​/api/Offers?pageNum=$pageNum&itemsPerPage=$itemsPErPage";
  }

  static String getHistoryOrdersUrl(num _deliveryClientID) {
    // get
    return '$_baseUrl/api/Orders/history?deliveryClientID=$_deliveryClientID';
  }

  ////////Cart
  static String get addItemToCartUrl => "$_baseUrl/api/Cart/Create";

  static String get deleteItemFromCartUrl => "$_baseUrl/api/Cart/delete";

  static String getUSerCartUrl(num userID) {
    return "$_baseUrl/api/Cart/getCartItemsByUserID?userID=${userID.toString()}";
  }

  //checkout
  static String checkoutOrderUrl(num userID) {
    return "$_baseUrl/api/Orders/checkout?deliveryClientID=${userID.toString()}";
  }
}
 */
///
/// class Url {
//  // static String _BaseUrl = "http://192.168.1.20/ourcartapp";
//  static String _baseUrl = "http://fekrasoft-001-site20.gtempurl.com";
//
//  static String get resetPasswordUrl =>
//      '$_baseUrl/api/Account/ResetPassword'; //post
//
//  // account urls
//  // can get all accounts and update and delete account with only change method
//  // static String get account_url => "$_BaseUrl/api/Account"; // get/ post /delete/ put
//  static String get loginUrl => "$_baseUrl/api/Account/login"; // post
//  static String get registerUrl => "$_baseUrl/api/Account/create"; // post
//  static String get changePasswordUrl =>
//      '$_baseUrl/api/Account/changePassword'; //post
//  static String get updateUserDataUrl => '$_baseUrl/api/Account/UpdateUserData';
//  static String get getUserDataUrl => '$_baseUrl/api/Account/GetUserData';
//  static String forgotPasswordUrl(String email) =>
//      "$_baseUrl/api/Account/ForgotPassword?email=$email"; // get
//
//  // Area get all areas in api
//  static String get areasUrl =>
//      "$_baseUrl/api/area"; //_BaseUrl+"​/api​/Area"; // get
//
//  //Cart
//  static String get cartUrl => "$_baseUrl​/api/Cart";
//
//  static String get addCartUrl => "$_baseUrl​/api/Cart/Create"; //post
//  static String get removeFromCartUrl => "$_baseUrl​/api/Cart/delete"; //post
//
//  static String getUserCartUrl(int userID) {
//    // get
//    return "$_baseUrl​/api​/Cart​/getCartItemsByUserID?userID=$userID";
//  }
//
//  // Favourite
//  static String get addFavUrl => "$_baseUrl/api/Favourites/create"; // post
//  static String get deleteItemFromFavUrl =>
//      "$_baseUrl/api/Favourites/remove"; // delete
//  static String get getFavStatusUrl =>
//      "$_baseUrl/api​/Favourites​/getItemStatus"; // delete
//  static String getAllFavUrl(num userID) {
//    // get
//    return "$_baseUrl/api/Favourites/getAll?userID=${userID.toString()}";
//  }
//
//  static String get updateFavUrl => "$_baseUrl/api/Favourites"; // update
//
//  //Category
////get post delete update
//  static String get allCategoryUrl => "$_baseUrl/api/Category";
//
//  static String get parentCategoryUrl => "$_baseUrl/api/Category/GetCategories";
//
//  static String childCategoriesUrl(int parentCatID) {
//    // get
//    return "$_baseUrl/api/Category/GetCategories?parentcatid=$parentCatID";
//  }
//
//  static String getItemsInCategoryUrl(
//      int catID, int pageNum, int itemsPerPage) {
//    // get
//    //http://fekrasoft-001-site20.gtempurl.com/api/Category/getItems?catId=45&pageNum=0&itemsPerPage=20
//    return "$_baseUrl/api/Category/getItems?catId=$catID&pageNum=$pageNum&itemsPerPage=$itemsPerPage";
//  }
//
//  //Favouriteis
//  static String get favUrl => "$_baseUrl​/api/Favourites";
//
//  // Offers
//  static String getOffersUrl(int pageNum, int itemsPErPage) {
//    // get
//    return '$_baseUrl/api/Offers?pageNum=$pageNum&itemsPerPage=$itemsPErPage';
////    return "$_baseUrl​/api/Offers?pageNum=$pageNum&itemsPerPage=$itemsPErPage";
//  }
//
//  static String getHistoryOrdersUrl(num _deliveryClientID) {
//    // get
//    return '$_baseUrl/api/Orders/history?deliveryClientID=$_deliveryClientID';
//  }
//
//  ////////Cart
//  static String get addItemToCartUrl => "$_baseUrl/api/Cart/Create";
//
//  static String get deleteItemFromCartUrl => "$_baseUrl/api/Cart/delete";
//
//  static String getUSerCartUrl(num userID) {
//    return "$_baseUrl/api/Cart/getCartItemsByUserID?userID=${userID.toString()}";
//  }
//
//  //checkout
//  static String checkoutOrderUrl(num userID) {
//    return "$_baseUrl/api/Orders/checkout?deliveryClientID=${userID.toString()}";
//  }
//}
///*
//class Url {
//  // static String _BaseUrl = "http://192.168.1.20/ourcartapp";
//  static String _baseUrl = "http://fekrasoft-001-site20.gtempurl.com";
//
//  // account urls
//  // can get all accounts and update and delete account with only change method
//  // static String get account_url => "$_BaseUrl/api/Account"; // get/ post /delete/ put
//  static String get loginUrl => "$_baseUrl/api/Account/login"; // post
//  static String get registerUrl => "$_baseUrl/api/Account/create"; // post
//  static String get updateUserDataUrl => '$_baseUrl/api/Account/UpdateUserData';
//  static String get changePasswordUrl => '$_baseUrl/api/Account/changePassword'; //post
//  static String get getUserDataUrl => '$_baseUrl/api/Account/GetUserData';
//  static String get resetPasswordUrl => '$_baseUrl/api/Account/ResetPassword';//post
//
//  static String forgotPasswordUrl(String email) =>
//      "$_baseUrl/api/Account/ForgotPassword?email=$email"; // get
//
//  // Area get all areas in api
//  static String get areasUrl =>
//      "$_baseUrl/api/area"; //_BaseUrl+"​/api​/Area"; // get
//
//  //Cart
//  static String get cartUrl => "$_baseUrl​/api/Cart";
//
//  static String get addCartUrl => "$_baseUrl​/api/Cart/Create"; //post
//  static String get removeFromCartUrl => "$_baseUrl​/api/Cart/delete"; //post
//
//  static String getUserCartUrl(int userID) {
//    // get
//    return "$_baseUrl​/api​/Cart​/getCartItemsByUserID?userID=$userID";
//  }
//
//  // Favourite
//  static String get addFavUrl => "$_baseUrl/api/Favourites/create"; // post
//  static String get deleteItemFromFavUrl =>
//      "$_baseUrl/api/Favourites/remove"; // delete
//  static String get getFavStatusUrl =>
//      "$_baseUrl/api​/Favourites​/getItemStatus"; // delete
//  static String getAllFavUrl(num userID) {
//    // get
//    return "$_baseUrl/api/Favourites/getAll?userID=${userID.toString()}";
//  }
//
//  static String get updateFavUrl => "$_baseUrl/api/Favourites"; // update
//
//  //Category
////get post delete update
//  static String get allCategoryUrl => "$_baseUrl/api/Category";
//
//  static String get parentCategoryUrl => "$_baseUrl/api/Category/GetCategories";
//
//  static String childCategoriesUrl(int parentCatID) {
//    // get
//    return "$_baseUrl/api/Category/GetCategories?parentcatid=$parentCatID";
//  }
//
//  static String getItemsInCategoryUrl(
//      int catID, int pageNum, int itemsPerPage) {
//    // get
//    //http://fekrasoft-001-site20.gtempurl.com/api/Category/getItems?catId=45&pageNum=0&itemsPerPage=20
//    return "$_baseUrl/api/Category/getItems?catId=$catID&pageNum=$pageNum&itemsPerPage=$itemsPerPage";
//  }
//
//  //Favouriteis
//  static String get favUrl => "$_baseUrl​/api/Favourites";
//
//  // Offers
//  static String getOffersUrl(int pageNum, int itemsPErPage) {
//    // get
//    return "$_baseUrl​/api/Offers?pageNum=$pageNum&itemsPerPage=$itemsPErPage";
//  }
//
//  static String getHistoryOrdersUrl(num _deliveryClientID) {
//    // get
//    return '$_baseUrl/api/Orders/history?deliveryClientID=$_deliveryClientID';
//  }
//
//  ////////Cart
//  static String get addItemToCartUrl => "$_baseUrl/api/Cart/Create";
//
//  static String get deleteItemFromCartUrl => "$_baseUrl/api/Cart/delete";
//
//  static String getUSerCartUrl(num userID) {
//    return "$_baseUrl/api/Cart/getCartItemsByUserID?userID=${userID.toString()}";
//  }
//
//  //checkout
//  static String checkoutOrderUrl(num userID) {
//    return "$_baseUrl/api/Orders/checkout?deliveryClientID=${userID.toString()}";
//  }
//}
// */
