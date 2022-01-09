import 'package:flutter/material.dart';
import 'package:flutterapp/shared/services/app_database.dart';
import 'package:flutterapp/shared/utils/app_state.dart';

class LoginController extends ChangeNotifier {
  AppState state = AppState.empty();

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

  void update(AppState state) {
    this.state = state;
    notifyListeners();
  }

  Future<void> login() async {
    if (validator()) {
      try {
        update(AppState.loading());
        await AppDatabase.instance.login(email: _email, password: _password);
        update(AppState.success<String>("Usuário logado"));
      } catch (e) {
        update(AppState.error("Não foi possível realizar login"));
      }
    }
  }
}
