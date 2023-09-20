import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:movie_genie/core/data/model/film/film.dart';
import 'package:movie_genie/core/domain/film_manager.dart';
import 'package:movie_genie/utils/theme_provider.dart';
import 'package:provider/provider.dart';
import 'god_forsaken_me_model.dart';
import 'god_forsaken_me_widget.dart';

abstract class IGodForsakenMeWidgetModel implements IWidgetModel, IThemeProvider {
  void iDontFeelPainAnymore(Film film);

  List<Film> get films;
}

GodForsakenMeWidgetModel defaultGodForsakenMeWidgetModelFactory(BuildContext context) {
  return GodForsakenMeWidgetModel(
    GodForsakenMeModel(
      context.read(),
    ),
    GetIt.instance.get(),
  );
}

// TODO: cover with documentation
/// Default widget model for GodForsakenMeWidget
class GodForsakenMeWidgetModel extends WidgetModel<GodForsakenMeWidget, GodForsakenMeModel>
    with ThemeProvider
    implements IGodForsakenMeWidgetModel {


  GodForsakenMeWidgetModel(GodForsakenMeModel model, this.suffering) : super(model);

  final FilmManager suffering;

  @override
  void iDontFeelPainAnymore(Film film) {
    context.router.pop(film);
  }

  @override
  // TODO: implement films
  List<Film> get films => List.from(suffering.iHateThis);
}
