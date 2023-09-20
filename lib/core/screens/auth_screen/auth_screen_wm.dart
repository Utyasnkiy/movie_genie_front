import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:movie_genie/core/data/model/user_login/user_login.dart';
import 'package:movie_genie/core/domain/auth.dart';
import 'package:movie_genie/core/navigation/app_router.dart';
import 'package:movie_genie/utils/snackbar_ext.dart';
import 'package:provider/provider.dart';

import 'auth_screen_model.dart';
import 'auth_screen_widget.dart';

abstract class IAuthScreenWidgetModel implements IWidgetModel {
  TextEditingController get loginController;

  TextEditingController get passWordController;

  BuildContext get context;

  void toRegister();

  void auth();

  void back();
}

AuthScreenWidgetModel defaultAuthScreenWidgetModelFactory(
    BuildContext context) {
  return AuthScreenWidgetModel(
    AuthScreenModel(
      context.read(),
    ),
    context.read<Auth>(),
  );
}

// TODO: cover with documentation
/// Default widget model for AuthScreenWidget
class AuthScreenWidgetModel
    extends WidgetModel<AuthScreenWidget, AuthScreenModel>
    implements IAuthScreenWidgetModel {
  AuthScreenWidgetModel(AuthScreenModel model, this.authManager) : super(model);

  @override
  final TextEditingController loginController = TextEditingController();

  final Auth authManager;

  @override
  final TextEditingController passWordController = TextEditingController();

  @override
  void dispose() {
    loginController.dispose();
    passWordController.dispose();
    super.dispose();
  }

  @override
  Future<void> auth() async {
    final error = _validate();
    if (error != null) {
      context.showSnackBar(error);
      return;
    }

    final success = await authManager.login(UserLogin(
        username: loginController.text, password: passWordController.text));

    if(success){
      back();
      return;
    }

    _snackWrong();
  }

  void _snackWrong(){
    context.showSnackBar("Неправильные данные");
  }

  @override
  void back() {
    context.router.popUntilRoot();
  }

  @override
  void toRegister() {
    context.router.navigate(RegisterScreenRoute());
  }

  String? _validate() {
    if (loginController.text.isEmpty) {
      return "Логин не может быть пустым";
    }

    if (passWordController.text.length < 6) {
      return "Введите пароль длинее 6 символов";
    }

    return null;
  }
}
