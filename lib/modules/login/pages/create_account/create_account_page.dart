import 'package:flutter/material.dart';
import 'package:flutterapp/shared/theme/app_theme.dart';
import 'package:flutterapp/shared/widgets/button/button.dart';
import 'package:flutterapp/shared/widgets/input_text/input_text.dart';

class CreateAccountPage extends StatelessWidget {
  const CreateAccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppTheme.colors.background,
        leading: BackButton(
          color: AppTheme.colors.backButton,
        ),
        elevation: 0,
      ),
      backgroundColor: AppTheme.colors.background,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Criando uma conta",
              style: AppTheme.textStyles.title,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Mantenha seus gastos em dia",
              style: AppTheme.textStyles.subtitle,
            ),
            SizedBox(
              height: 38,
            ),
            InputText(label: "Nome completo", hint: "Digite seu nome completo"),
            SizedBox(height: 18),
            InputText(label: "E-mail", hint: "Digite seu email"),
            SizedBox(height: 18),
            InputText(label: "Senha", obscure: true, hint: "Digite sua senha"),
            SizedBox(height: 14),
            Button(
              label: "Criar conta",
              onTap: () {
                print("Criar conta");
              },
            )
          ],
        ),
      ),
    );
  }
}
