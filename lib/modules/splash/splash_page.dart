import 'package:flutterapp/shared/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SplashWidget extends StatelessWidget {
  const SplashWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3)).then((value) {
      Navigator.pushNamed(context, "/login");
    });
    return Scaffold(
        backgroundColor: AppTheme.colors.primary,
        //backgroundColor: AppTheme.colors.background,
        //body: Center(child: Image.asset("assets/images/logo.png")));
        body: Center(
          child: Text(
            "CARctus",
            style: AppTheme.textStyles.logo,
          ),
        ));
  }
}
