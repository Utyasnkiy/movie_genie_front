import 'package:auto_route/annotations.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:movie_genie/core/screens/components/form.dart';

import 'auth_screen_wm.dart';

@RoutePage()
class AuthScreenWidget extends ElementaryWidget<IAuthScreenWidgetModel> {
  const AuthScreenWidget({
    Key? key,
    WidgetModelFactory wmFactory = defaultAuthScreenWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(IAuthScreenWidgetModel wm) {
    return Scaffold(
      body: Stack(children: [
        Center(
          child: Image.asset(
            "assets/bg_form.png",
            fit: BoxFit.contain,
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: LoginForm(
            loginController: wm.loginController,
            passwordController: wm.passWordController,
            auth: () => (),
            toRegister: () => (),
            back: () => (),
          ),
        ),

      ],),
    );
  }
}
