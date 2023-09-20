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
        Image.asset(
          "assets/bg_form.png",
          width: MediaQuery.of(wm.context).size.width,
          height: MediaQuery.of(wm.context).size.height,
          fit: BoxFit.cover,
        ),
        Align(
          alignment: Alignment.center,
          child: LoginForm(
            loginController: wm.loginController,
            passwordController: wm.passWordController,
            auth: () => wm.auth(),
            toRegister: () => wm.toRegister(),
            back: () => wm.back(),
          ),
        ),

      ],),
    );
  }
}
