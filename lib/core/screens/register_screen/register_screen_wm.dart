import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'register_screen_model.dart';
import 'register_screen_widget.dart';

abstract class IRegisterScreenWidgetModel implements IWidgetModel {}

RegisterScreenWidgetModel defaultRegisterScreenWidgetModelFactory(
    BuildContext context) {
  return RegisterScreenWidgetModel(RegisterScreenModel(
    context.read(),
  ));
}

// TODO: cover with documentation
/// Default widget model for RegisterScreenWidget
class RegisterScreenWidgetModel
    extends WidgetModel<RegisterScreenWidget, RegisterScreenModel>
    implements IRegisterScreenWidgetModel {
  RegisterScreenWidgetModel(RegisterScreenModel model) : super(model);
}
