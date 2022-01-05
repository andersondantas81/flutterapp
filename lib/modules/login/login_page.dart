import 'package:flutterapp/shared/widgets/button/button.dart';
import 'package:flutterapp/shared/widgets/input_text/input_text.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/logo.png",
                width: 200,
              ),
              SizedBox(height: 24),
              InputText(label: "E-mail", hint: "Digite seu email"),
              SizedBox(height: 12),
              InputText(label: "Senha", hint: "Digite sua senha"),
              SizedBox(height: 14),
              Button(
                label: "Entrar",
                onTap: () {
                  print("Entrar");
                },
              ),
              SizedBox(height: 50),
              Button(
                label: "Criar conta",
                onTap: () {
                  print("Criar conta");
                },
                type: ButtonType.outline,
              )
            ],
          ),
        ),
      ),
    );
  }
}
