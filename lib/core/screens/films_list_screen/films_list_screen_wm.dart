import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:movie_genie/core/data/model/film/film.dart';
import 'package:movie_genie/core/domain/film_manager.dart';
import 'package:movie_genie/core/navigation/app_router.dart';
import 'package:movie_genie/utils/theme_provider.dart';
import 'package:provider/provider.dart';
import 'films_list_screen_model.dart';
import 'films_list_screen_widget.dart';

abstract class IFilmsListScreenWidgetModel implements IWidgetModel, IThemeProvider {

  FilmManager get filmManager;

  void onCardTap(Film film);
}

FilmsListScreenWidgetModel defaultFilmsListScreenWidgetModelFactory(BuildContext context) {
  return FilmsListScreenWidgetModel(
    FilmsListScreenModel(
      context.read(),
    ),
      GetIt.instance.get()
  );
}

// TODO: cover with documentation
/// Default widget model for FilmsListScreenWidget
class FilmsListScreenWidgetModel extends WidgetModel<FilmsListScreenWidget, FilmsListScreenModel>
    with ThemeProvider
    implements IFilmsListScreenWidgetModel {

  FilmsListScreenWidgetModel(FilmsListScreenModel model, this.filmManager) : super(model);

  @override
  void initWidgetModel() {
    super.initWidgetModel();
    filmManager.updateFilms();
  }

  @override
  final FilmManager filmManager;

  @override
  void onCardTap(Film film) {
    context.router.push(FilmCardScreenRoute(film: film, id: film.id));
  }
}
