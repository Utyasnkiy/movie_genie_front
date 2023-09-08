import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'create_movie_screen_model.dart';
import 'create_movie_screen_widget.dart';

abstract class ICreateMovieScreenWidgetModel implements IWidgetModel {
}

CreateMovieScreenWidgetModel defaultCreateMovieScreenWidgetModelFactory(BuildContext context) {
  return CreateMovieScreenWidgetModel(
    CreateMovieScreenModel(
      context.read(),
    )
  );
}

// TODO: cover with documentation
/// Default widget model for CreateMovieScreenWidget
class CreateMovieScreenWidgetModel extends WidgetModel<CreateMovieScreenWidget, CreateMovieScreenModel>
    implements ICreateMovieScreenWidgetModel {

  CreateMovieScreenWidgetModel(CreateMovieScreenModel model) : super(model);
}
