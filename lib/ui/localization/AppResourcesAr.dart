import '../localization/IAppResources.dart';

class AppResourcesAr implements IAppResources {
  @override
  String get appTitle => "الجيلاني";

  @override
  String get login => "تسجيل الدخول";

  @override
  String get notRegistered =>
      "عميل جديد ؟"; /////////////////// REGISTER /////////////////////
  @override
  String get fullName => "الاسم بالكامل";

  @override
  String get fullNameAr => "الاسم باللغة العربية";

  @override
  String get age => "العمر";

  @override
  String get city => "المدينه";

  @override
  String get email => "الايميل";

  @override
  String get phoneNumber => "رقم التليفون";

  @override
  String get area => "المنطقه";

  @override
  String get region => "المنطقه";

  @override
  String get next => "التالي";

  @override
  String get signUp => "تسجيل جديد";

  @override
  String get address => "العنوان";

  @override
  String get apartmentNumber => "رقم السكن";

  @override
  String get building => "المبني";

  @override
  String get findLocation => "تحديد الموقع";

  @override
  String get floor => "الدور";

  @override
  String get register => "تسجيل جديد";

  @override
  String get specialLandMark => "علامه مميزه";

  //////////////// LOGIN //////////////////////
  @override
  String get password => "كلمة المرور";

  @override
  String get phoneNum => "الهاتف";

  @override
  String get phoneNumEx => "مثال : 010123456789";

  @override
  String get signUpNewAccount =>
      "تسجيل جديد"; ///////////////////////////// Category ////////////////////////////////
  @override
  String get search => "بحث";

  @override
  String get bread => "خبز";

  @override
  String get candy => "حلويات";

  @override
  String get fish => "سمك";

  @override
  String get fruit => "فاكهة";

  @override
  String get meat => "لحوم";

  @override
  String get vegetables => "خضراوات";

  ////////////////////////// FAVs //////////////////
  @override
  String get favProducts => "العناصر المفضلة";

  @override
  String get categories => "الاصناف";

  @override
  String get favourites => "المفضله";

  @override
  String get home => "الرئيسية";

  @override
  String get myProfile => "الملف الشخصي";

  @override
  String get offers => "العروض";

  @override
  String get previousHistory => "الطلبات السابقه";

  @override
  String get signOut => "تسجيل الخروج";

  @override
  String get featuredProducts => "المنتجات المميزه";

  @override
  String get promotions => "العروض";

  @override
  String get shopByCategory => "تسوق الاقسام";

  @override
  String get profile => "بياناتي";

  @override
  String get addAddress => "إضافة عنوان";

  @override
  String get currentOrders => "الطلبات الحالية";

  @override
  String get deliveryAddress => "عنوان التوصيل";

  @override
  String get editProfile => "تعديل البيانات";

  @override
  String get reorder => "إعادة طلب";

  @override
  String get status => "حالة الطلب";

  @override
  String get userName => "اسم المستخدم";

  @override
  String get addNewAddress => "إضافة عنوان جديد";

  @override
  String get shoppingCart => "عربة التسوق";

  @override
  String get total => "المجموع الكلي";

  @override
  String get subTotal => "المجموع الفرعي";

  @override
  String get delivery => "التوصيل";

  @override
  String get checkout => "انهاء الطلب";

  @override
  String get changeAddress => "تغيير العنوان";

  @override
  String get deliveryDate => "تاريخ التوصيل";

  @override
  String get confirm => "تأكيد";

  @override
  String get orderHistory => "تاريخ الطلبات";

  @override
  String get cancelOrder => "الغاء الطلب";

  @override
  String get orderDetails => "تفاصيل الطلب";

  @override
  String get orderConfirmed => "اكمال الطلب";

  @override
  String get trackOrderHistory => "يمكنك متابعة طلبك من خلال الطلبات السابقه";

  @override
  String get trackHistory => "متابعة تاريخ الطلبات";

  @override
  //  implement orders
  String get orders => "الطلبات";

  @override
  //  implement cart
  String get cart => "العربة";

  @override
  //  implement error
  String get error => "خطأ";

  @override
  //  implement ok
  String get ok => "حسنا";

  @override
  //  implement success
  String get success => "نجاح";

  @override
  //  implement fillEmbtyFileds
  String get fillEmptyFields => "من فضلك املئ الحقول الفارغه أولا";

  @override
  //  implement genericError
  String get genericError => "حدث خطأ غير مقصود من فصلك حاول في وقت لاحق";

  @override
  //  implement subCategories
  String get subCategories => "الفئات";

  @override
  //  implement itemsInCategory
  String get itemsInCategory => "العناصر";

  /////////////////// Validator Messages /////////
  String get notValidName => "يجب أن يكون الاسم ٣ أحرف على الأقل";
  String get notValidEmail => "أدخل بريد إلكتروني متاح";
  String get notValidPhone => "يجب أن يكون رقم الهاتف ارقام لا حروف";
  String get notValidAge => "يجب أن يكون العمر رقمين فقط";
  String get notValidPass => "يجب أن تكون كلمة المرور 7 أحرف و ارقام على الأقل";
  String get notValidText => "أدخل نصًا على الأقل ١ حرف";

  @override
  //  implement checkConnectivity
  String get checkConnectivity => "من فضلك تأكد من اتصالك بالانترنت";

  @override
  //  implement connectionError
  String get connectionError => "خطأ بالاتصال بالانترنت";

  @override
  //  implement selectArea
  String get selectArea => "اختر المنطقة";

  @override
  //  implement selectAreaMSG
  String get selectAreaMSG => "اختر المنطقة أولا لأكمال التسجيل";

  @override
  // ignore: non_constant_identifier_names
  get EGP => "ج.م";

  @override
  //  implement Price
  get price => "السعر :";

  @override
  //  implement barcode
  String get barcode => "الباركود :";

  @override
  //  implement package
  get package => "التغليف :";

  @override
  //  implement packageName
  get packageName => "اسم التغليف :";

  @override
  //  implement Notes
  get notes => "ملاحظات :";
  @override
  //  implement addToCart
  String get addToCart => "اضافة الي العرية";

  @override
  //  implement MyLanguage
  String get myLanguage => "EN";

  @override
  //  implement Theme
  String get theme => "أسود";

  @override
  // TODO: implement tryAgain
  String get tryAgain => 'حاول مرة اخرى';

  @override
  // TODO: implement changePassword
  String get changePassword => 'تغير كلمة المرور';

  @override
  // TODO: implement restPassword
  String get forgetPassword => 'اعد تعين  كلمة المرور';

  @override
  // TODO: implement newPassword
  get newPassword => 'كلمة المرور الجديدة';

  @override
  // TODO: implement theLanguage
  String get theLanguage => 'عربى';

  @override
  // TODO: implement darkMode
  String get darkMode => 'الوضع المظلم';
}
