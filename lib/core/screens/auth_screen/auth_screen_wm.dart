import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'auth_screen_model.dart';
import 'auth_screen_widget.dart';

abstract class IAuthScreenWidgetModel implements IWidgetModel {
  TextEditingController get loginController;
  TextEditingController get passWordController;
}

AuthScreenWidgetModel defaultAuthScreenWidgetModelFactory(BuildContext context) {
  return AuthScreenWidgetModel(
    AuthScreenModel(
      context.read(),
    )
  );
}

// TODO: cover with documentation
/// Default widget model for AuthScreenWidget
class AuthScreenWidgetModel extends WidgetModel<AuthScreenWidget, AuthScreenModel>
    implements IAuthScreenWidgetModel {

  AuthScreenWidgetModel(AuthScreenModel model) : super(model);

  @override
  final TextEditingController loginController = TextEditingController();

  @override
  final TextEditingController passWordController = TextEditingController();

  @override
  void dispose() {
    loginController.dispose();
    passWordController.dispose();
    super.dispose();
  }
}
