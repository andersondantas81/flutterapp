import 'package:flutterapp/modules/login/pages/create_account/create_account_page.dart';
import 'package:flutterapp/modules/splash/splash_page.dart';
import 'package:flutter/material.dart';

import 'package:flutterapp/modules/login/login_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "CARctus",
      theme: ThemeData(primarySwatch: Colors.green),
      initialRoute: "/splash",
      routes: {
        "/splash": (context) => const SplashWidget(),
        "/login": (context) => const LoginPage(),
        "/login/create-account": (context) => const CreateAccountPage(),
      },
    );
  }
}
