import 'package:flutterapp/modules/login/login_controller.dart';
import 'package:flutterapp/shared/widgets/button/button.dart';
import 'package:flutterapp/shared/widgets/input_text/input_text.dart';
import 'package:flutter/material.dart';
import 'package:validators/validators.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final controller = LoginController();
  @override
  Widget build(BuildContext context) {
    //final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 40),
          child: Form(
            key: controller.formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/logo.png",
                  width: 200,
                ),
                SizedBox(height: 24),
                InputText(
                  label: "E-mail",
                  hint: "Digite seu email",
                  validator: (value) =>
                      isEmail(value) ? null : "Digite um email válido",
                  onChanged: (value) => controller.onChange(email: value),
                ),
                SizedBox(height: 12),
                InputText(
                  label: "Senha",
                  obscure: true,
                  hint: "Digite sua senha",
                  validator: (value) =>
                      value.length >= 6 ? null : "Digite uma senha mais forte",
                  onChanged: (value) => controller.onChange(password: value),
                ),
                SizedBox(height: 14),
                Button(
                  label: "Entrar",
                  onTap: () {
                    controller.login();
                  },
                ),
                SizedBox(height: 50),
                Button(
                  label: "Criar conta",
                  onTap: () {
                    Navigator.pushNamed(context, "/login/create-account");

                    /*Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CreateAccountPage()));*/
                  },
                  type: ButtonType.outline,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
