import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:movie_genie/core/data/request/user_register/user_register.dart';
import 'package:movie_genie/core/domain/auth.dart';
import 'package:movie_genie/core/domain/user_data.dart';
import 'package:movie_genie/core/navigation/app_router.dart';
import 'package:movie_genie/utils/snackbar_ext.dart';
import 'package:provider/provider.dart';

import 'register_screen_model.dart';
import 'register_screen_widget.dart';

abstract class IRegisterScreenWidgetModel implements IWidgetModel {
  TextEditingController get loginController;

  TextEditingController get passwordController;

  TextEditingController get repeatPasswordController;

  TextEditingController get emailController;

  BuildContext get context;

  void register();

  void toAuth();

  void back();
}

RegisterScreenWidgetModel defaultRegisterScreenWidgetModelFactory(
    BuildContext context) {
  return RegisterScreenWidgetModel(
    RegisterScreenModel(
      context.read(),
    ),
    context.read<Auth>(),
  );
}

// TODO: cover with documentation
/// Default widget model for RegisterScreenWidget
class RegisterScreenWidgetModel
    extends WidgetModel<RegisterScreenWidget, RegisterScreenModel>
    implements IRegisterScreenWidgetModel {
  RegisterScreenWidgetModel(RegisterScreenModel model, this.auth)
      : super(model);


  final Auth auth;

  @override
  TextEditingController emailController = TextEditingController();

  @override
  TextEditingController loginController = TextEditingController();

  @override
  TextEditingController passwordController = TextEditingController();

  @override
  TextEditingController repeatPasswordController = TextEditingController();

  @override
  void register() async{
    final error = _validate();
    if (error != null) {
      context.showSnackBar(error);
      return;
    }
    final errorReponse = await auth.register(
      UserRegistration(
          email: emailController.text,
          username: loginController.text,
          password: passwordController.text),
    );
    if(errorReponse != null){
      context.showSnackBar(errorReponse);
    } else{
      back();
    }
  }

  @override
  void back() {
    context.router.popUntilRoot();
  }

  @override
  void toAuth() {
    context.router.navigate(AuthScreenRoute());
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  String? _validate() {
    if (loginController.text.isEmpty) {
      return "Логин не может быть пустым";
    }

    if (passwordController.text.length < 6) {
      return "Введите пароль длинее 6 символов";
    }

    if (passwordController.text != repeatPasswordController.text) {
      return "Пароли не совпадают";
    }

    if (!RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(emailController.text)) {
      return "Неправильный формат почты";
    }
    return null;
  }
}
