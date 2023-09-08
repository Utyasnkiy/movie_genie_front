import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'register_screen_wm.dart';

// TODO: cover with documentation
/// Main widget for RegisterScreen module
class RegisterScreenWidget extends ElementaryWidget<IRegisterScreenWidgetModel> {
  const RegisterScreenWidget({
    Key? key,
    WidgetModelFactory wmFactory = defaultRegisterScreenWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(IRegisterScreenWidgetModel wm) {
    return Container();
  }
}
