import 'package:auto_route/annotations.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:movie_genie/core/screens/components/form.dart';

import 'register_screen_wm.dart';

@RoutePage()
class RegisterScreenWidget
    extends ElementaryWidget<IRegisterScreenWidgetModel> {
  const RegisterScreenWidget({
    Key? key,
    WidgetModelFactory wmFactory = defaultRegisterScreenWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(IRegisterScreenWidgetModel wm) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/bg_form.png",
            width: MediaQuery.of(wm.context).size.width,
            height: MediaQuery.of(wm.context).size.height,
            fit: BoxFit.cover,
          ),
          Align(
            alignment: Alignment.center,
            child: RegisterForm(
              loginController: wm.loginController,
              passwordController: wm.passwordController,
              toAuth: () => wm.toAuth(),
              register: () => wm.register(),
              back: () => wm.back(),
              emailController: wm.emailController,
              repeatPasswordController: wm.repeatPasswordController,
            ),
          ),
        ],
      ),
    );
    ;
  }
}
