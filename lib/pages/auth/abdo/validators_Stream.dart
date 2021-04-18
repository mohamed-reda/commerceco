import 'dart:async';

import '../../../utils/Validator.dart';

mixin ValidatorsStream {
  var emailValidator = StreamTransformer<String, String>.fromHandlers(
      handleData: (email, sink) => (Validators.isValidEmail(email))
          ? sink.add(email)
          : sink.addError("Email is not valid"));

  var passwordValidator = StreamTransformer<String, String>.fromHandlers(
      handleData: (password, sink) => (Validators.isValidPassword(password))
          ? sink.add(password)
          : sink.addError("Password length should be greater than 7 chars."));

  var obscureChanger = StreamTransformer<bool, bool>.fromHandlers(
      handleData: (obscure, sink) => sink.add(!obscure));
}
