import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:movie_genie/core/data/model/film/film.dart';
import 'package:movie_genie/core/domain/selection_manager.dart';
import 'package:movie_genie/core/domain/film_manager.dart';
import 'package:movie_genie/utils/snackbar_ext.dart';
import 'package:movie_genie/utils/theme_provider.dart';
import 'package:provider/provider.dart';

import 'film_card_screen_model.dart';
import 'film_card_screen_widget.dart';

abstract class IFilmCardScreenWidgetModel
    implements IWidgetModel, IThemeProvider {
  void onWatchLater(Film film);

  void onAddToSelection(Film film);

  FilmManager get filmManager;


  SelectionManager get selectionManager;
  bool get isFavorite;
}

FilmCardScreenWidgetModel defaultFilmCardScreenWidgetModelFactory(
    BuildContext context) {
  return FilmCardScreenWidgetModel(
    FilmCardScreenModel(context.read<ErrorHandler>()),
    context.read<SelectionManager>(),
    GetIt.instance.get(),
  );
}

// TODO: cover with documentation
/// Default widget model for FilmCardScreenWidget
class FilmCardScreenWidgetModel
    extends WidgetModel<FilmCardScreenWidget, FilmCardScreenModel>
    with ThemeProvider
    implements IFilmCardScreenWidgetModel {
  FilmCardScreenWidgetModel(
      FilmCardScreenModel model, this.selectionManager, this.filmManager)
      : super(model);

  @override
  void onAddToSelection(Film film) {
    // TODO: implement onAddToSelection
  }



  @override
  final SelectionManager selectionManager;

  @override
  final FilmManager filmManager;

  @override
  void onWatchLater(Film film) {
    if(!filmManager.checkAuth()){
      context.showSnackBar("Авторизуйтесь, чтобы добавлять в избранное");
    }
    if(!isFavorite){
      filmManager.addToWatchLater(film);
      return;
    }

    filmManager.removeFromWatchLater(film);
  }

  @override
  bool get isFavorite => filmManager.watchLaterState.value.data?.contains(widget.film) ?? false;
}
