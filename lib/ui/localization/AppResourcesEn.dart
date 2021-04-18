import '../localization/IAppResources.dart';

class AppResourcesEn implements IAppResources {
  @override
  String get appTitle => "El Gelany";

  //////////////// Register ////////////////////////////

  @override
  String get fullName => "Full name";

  @override
  String get fullNameAr => "Full name arabic";

  @override
  String get age => "Age";

  @override
  String get city => "City";

  @override
  String get email => "Email";

  @override
  String get phoneNumber => "Phone number";

  @override
  String get region => "Region";

  @override
  String get area => "Area";

  @override
  String get next => "Next";

  @override
  String get signUp => "Sign Up";

  @override
  String get address => "Address";

  @override
  String get apartmentNumber => "Appartment number";

  @override
  String get building => "Building";

  @override
  String get findLocation => "Find Location";

  @override
  String get floor => "Floor";

  @override
  String get register => "Register";

  @override
  String get specialLandMark => "Special landmark";

////////////////// LOGIN ////////////////////////////////
  @override
  String get login => "LOGIN";

  @override
  String get notRegistered => "Not Registered?";

  @override
  String get password => "Password";

  @override
  String get phoneNum => "Phone Number";

  @override
  String get phoneNumEx => "ex: 010123456789";

  @override
  String get signUpNewAccount => "Create new account";

///////////////////////////// Category ////////////////////////////////

  @override
  String get search => "Search";

  @override
  String get bread => "Bread";

  @override
  String get candy => "Candy";

  @override
  String get fish => "Fish";

  @override
  String get fruit => "Fruit";

  @override
  String get meat => "Meat";

  @override
  String get vegetables => "Vegetables";

  /////////////////// FAV ///////////////////
  @override
  String get favProducts => "Favorite Products";

  @override
  String get categories => "Categories";

  @override
  String get favourites => "Favourites";

  @override
  String get home => "Home";

  @override
  String get myProfile => "My Profile";

  @override
  String get offers => "Offers";

  @override
  String get signOut => "Sign Out";

  @override
  String get featuredProducts => "Featured Products";

  @override
  String get promotions => "Promotions";

  @override
  String get shopByCategory => "Shop by category";

  @override
  String get profile =>
      //  implement Profile
      "Profile";

  @override
  String get addAddress => "Add address";

  @override
  String get currentOrders => "Current Orders";

  @override
  String get deliveryAddress => "Delivery Address :";

  @override
  String get reorder => "Reorder";

  @override
  String get status => "Status:";

  @override
  String get userName => "User Name:";

  @override
  String get editProfile => "Edit Profile";

  @override
  String get addNewAddress => "Add New Address";

  @override
  String get shoppingCart => "Shopping Cart";

  @override
  String get subTotal => "Subtotal";

  @override
  String get total => "Total";

  @override
  String get delivery => "Delivery";

  @override
  String get checkout => "Check Out";

  @override
  String get changeAddress => "Change Address";

  @override
  String get deliveryDate => "Delivery Date";

  @override
  String get confirm => "Confirm";

  @override
  String get orderHistory => "Order History";

  @override
  String get cancelOrder => "Cancel Order";

  @override
  String get orderDetails => "Order Details";

  @override
  String get orderConfirmed => "Order Confirmed";

  @override
  String get trackOrderHistory =>
      "You can track your order from your Orders History";

  @override
  String get trackHistory => "Track History";

  @override
  //  implement orders
  String get orders => "Orders";

  @override
  //  implement cart
  String get cart => "Cart";

  @override
  //  implement error
  String get error => "Error";

  @override
  //  implement ok
  String get ok => "Ok";

  @override
  //  implement success
  String get success => "Success";

  @override
  //  implement fillEmbtyFileds
  String get fillEmptyFields => "Please Fill Embty Fields First";

  @override
  //  implement genericError
  String get genericError => "unknown error, please try again later.";

  /////////////////// Validator Messages /////////
  String get notValidName => "Name must be at least 3 characters";
  String get notValidEmail => "Enter a valid email";
  String get notValidPhone => "Phone Number must be number not character ";
  String get notValidAge => "Age must be 2 numbers only";
  String get notValidPass => "Password must be at least 8 characters";
  String get notValidText => "Enter valid text , at least 1 character";

  @override
  //  implement subCategories
  String get subCategories => "Sub Categories";

  @override
  //  implement itemsInCategory
  String get itemsInCategory => "Items";

  @override
  //  implement checkConnectivity
  String get checkConnectivity => "Network Error";

  @override
  //  implement connectionError
  String get connectionError => "please check your internet connection !";

  @override
  //  implement selectArea
  String get selectArea => "Select Area";

  @override
  //  implement selectAreaMSG
  String get selectAreaMSG =>
      "please Select Area First To Complete Registeration";

  @override
  // ignore: non_constant_identifier_names
  get EGP => "EGP";

  @override
  //  implement Price
  get price => "Price : ";

  @override
  //  implement barcode
  String get barcode => "BarCode : ";

  @override
  //  implement package
  get package => "Package : ";

  @override
  //  implement packageName
  get packageName => "Package Name : ";

  @override
  //  implement Notes
  get notes => "Notes : ";

  @override
  //  implement addToCart
  String get addToCart => "Add To Cart";

  @override
  //  implement MyLanguage
  String get myLanguage => "ع";

  @override
  //  implement Theme
  String get theme => "Dark";

  @override
  String get tryAgain => 'Try again';

  @override
  String get changePassword => 'Change password';

  @override
  String get forgetPassword => 'Forget password';

  @override
  get newPassword => 'New password';

  @override
  String get previousHistory => 'Previous History';

  @override
  String get theLanguage => 'Language';
  String get darkMode => 'Dark mode';
}
