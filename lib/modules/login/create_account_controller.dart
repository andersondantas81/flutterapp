import 'package:flutter/cupertino.dart';

class CreateAccountController {
  final formKey = GlobalKey<FormState>();
  String _email = "";
  String _password = "";
  String _name = "";

  void onChange({String? email, String? password, String? name}) {
    email = email ?? _email;
    password = password ?? _password;
    name = name ?? _name;
    print("email: $_email | password: $password | nome: $_name");
  }

  bool validator() {
    final form = formKey.currentState!;
    if (form.validate()) {
      form.save();
      return true;
    }
    return false;
  }

  void create() {
    if (validator()) {
      print("Pode chamar o backend.");
    }
  }
}
