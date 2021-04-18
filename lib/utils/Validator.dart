import '../ui/localization/Language.dart';

class Validators {
  static bool isValidEmail(String em) {
    String p =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    return RegExp(p).hasMatch(em);
  }

  String validateEmail(String email) {
    return (isValidEmail(email)) ? null : (Language.myLanguage().notValidEmail);

//    if (isValidEmail(email)) {
//      return null;
//    } else {
//      return (Language.Lang().notValidEmail);
//    }
  }

  String validatePassword(String password) {
    return isValidPassword(password)
        ? null
        : (Language.myLanguage().notValidPass);

//    if (isvalidPassword(password)) {
//      return null;
//    } else {
//      return (Language.Lang().notValidPass);
//    }
  }

  String validatePhone(String phoneNumber) {
    return isValidPhoneNumber(phoneNumber)
        ? null
        : (Language.myLanguage().notValidPhone);
//    if (isvAlidPhoneNumber(phoneNumber)) {
//      return null;
//    } else {
//      return (Language.Lang().notValidPhone);
//    }
  }

  String validateName(String name) {
    return (name.length >= 3) ? null : (Language.myLanguage().notValidName);

//    if (name.length >= 3) {
//      return null;
//    } else {
//      return (Language.Lang().notValidName);
//    }
  }

//add
  String validateText(String name) {
    return (name.length >= 1) ? null : (Language.myLanguage().notValidText);

//    if (name.length >= 1) {
//      return null;
//    } else {
//      return (Language.Lang().notValidText);
//    }
  }

  String validateAge(String age) {
    return (age.length == 2) ? null : (Language.myLanguage().notValidAge);

//    if (age.length == 2) {
//      return null;
//    } else {
//      return (Language.Lang().notValidAge);
//    }
  }

  static bool isValidPassword(String password) {
    return password.length > 6;
  }

  static bool isValidPhoneNumber(dynamic phone) {
//        phone=int.parse(phone);
    try {
//            phone=phone.;
      phone = int.parse(phone
          .toString()
          .replaceAll('٠', '0')
          .replaceAll('١', '1')
          .replaceAll('٢', '2')
          .replaceAll('٣', '3')
          .replaceAll('٤', '4')
          .replaceAll('٥', '5')
          .replaceAll('٦', '6')
          .replaceAll('٧', '7')
          .replaceAll('٨', '8')
          .replaceAll('٩', '9'));
//            dynamic i=int.parse(phone);
    } catch (e) {
      return false;
    }
    return phone.runtimeType == int;
//        return phone.length >= 10;
  }
}
