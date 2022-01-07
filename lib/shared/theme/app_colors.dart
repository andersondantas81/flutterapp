import 'package:flutter/material.dart';

abstract class IAppColors {
  Color get title;
  Color get subtitle;
  Color get primary;
  Color get buttonDisabled;
  Color get textDisabled;
  Color get textEnable;
  Color get inputNormal;
  Color get background;
  Color get iconInactive;
  Color get textColor;
  Color get badColor;
  Color get border;
  Color get backButton;
}

class AppColors implements IAppColors {
  @override
  Color get primary => const Color(0XFF009241);

  @override
  Color get background => const Color(0XFFF7F7F7);

  @override
  Color get badColor => const Color(0XFFE45851);

  @override
  Color get border => const Color(0XFFE9E9EC);

  @override
  Color get buttonDisabled => const Color(0XFFABABAB);

  @override
  Color get iconInactive => const Color(0XFF8C8C8C);

  @override
  Color get inputNormal => const Color(0XFF949B9C);

  @override
  Color get textColor => const Color(0XFF272727);

  @override
  Color get textDisabled => const Color(0XFFD9D9D9);

  @override
  Color get textEnable => const Color(0XFFFFFFFF);

  @override
  Color get subtitle => const Color(0XFF949B9C);

  @override
  Color get title => const Color(0XFF1E1F20);

  @override
  Color get backButton => const Color(0XFF000000);
}
