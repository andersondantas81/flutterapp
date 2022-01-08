import 'package:flutter/cupertino.dart';
import 'package:flutterapp/shared/utils/app_state.dart';

class CreateAccountController extends ChangeNotifier {
  AppState state = AppState.empty();
  final formKey = GlobalKey<FormState>();
  String _email = "";
  String _password = "";
  String _name = "";

  void onChange({String? email, String? password, String? name}) {
    email = email ?? _email;
    password = password ?? _password;
    name = name ?? _name;
  }

  void update(AppState state) {
    this.state = state;
    notifyListeners();
  }

  bool validator() {
    final form = formKey.currentState!;
    if (form.validate()) {
      form.save();
      return true;
    }
    return false;
  }

  Future<void> create() async {
    if (validator()) {
      try {
        update(AppState.loading());
        await Future.delayed(Duration(seconds: 3));
        update(AppState.success<String>("Cadastro realizado com sucesso."));
      } catch (e) {
        update(AppState.error("Não foi possível criar conta"));
      }
    }
  }
}
