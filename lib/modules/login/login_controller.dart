import 'package:flutter/cupertino.dart';

class LoginController {
  final formKey = GlobalKey<FormState>();
  String _email = "";
  String _password = "";

  void onChange({String? email, String? password}) {
    email = email ?? _email;
    password = password ?? _password;
  }

  bool validator() {
    final form = formKey.currentState!;
    if (form.validate()) {
      form.save();
      return true;
    }
    return false;
  }

  void login() {
    if (validator()) {
      print("Pode chamar o backend.");
    }
  }
}
