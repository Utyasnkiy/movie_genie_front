import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:movie_genie/core/data/model/film/film.dart';
import 'package:movie_genie/core/domain/favorites.dart';
import 'package:movie_genie/core/domain/film_manager.dart';
import 'package:movie_genie/core/domain/user_data.dart';
import 'package:movie_genie/core/navigation/app_router.dart';
import 'package:movie_genie/utils/snackbar_ext.dart';
import 'package:movie_genie/utils/theme_provider.dart';
import 'package:provider/provider.dart';

import 'profile_screen_model.dart';
import 'profile_screen_widget.dart';

abstract class IProfileScreenWidgetModel
    implements IWidgetModel, IThemeProvider {
  FilmManager get filmManager;

  Favorites get favorites;

  void toSelectionList();

  void toFilmList();

  ScrollController get mainController;

  ScrollController get favoritesController;

  ScrollController get watchLaterController;

  void toFilm(Film film);

  void toSelection(selection);
}

ProfileScreenWidgetModel defaultProfileScreenWidgetModelFactory(
    BuildContext context) {
  return ProfileScreenWidgetModel(
      ProfileScreenModel(context.read()),
      GetIt.instance.get(),
      GetIt.instance.get(),
      GetIt.instance.get<UserData>());
}

// TODO: cover with documentation
/// Default widget model for ProfileScreenWidget
class ProfileScreenWidgetModel
    extends WidgetModel<ProfileScreenWidget, ProfileScreenModel>
    with ThemeProvider
    implements IProfileScreenWidgetModel {
  ProfileScreenWidgetModel(ProfileScreenModel model, this.favorites,
      this.filmManager, this._userData)
      : super(model);

  @override
  void initWidgetModel() {
    super.initWidgetModel();
    favorites.update();
    filmManager.updateWatchLater();
  }

  @override
  final Favorites favorites;

  final UserData _userData;

  @override
  final FilmManager filmManager;

  @override
  final ScrollController favoritesController = ScrollController();

  @override
  final ScrollController mainController = ScrollController();

  @override
  final ScrollController watchLaterController = ScrollController();

  @override
  void dispose() {
    favoritesController.dispose();
    mainController.dispose();
    watchLaterController.dispose();
    super.dispose();
  }

  @override
  void toFilm(Film film) {
    context.router.navigate(
      FilmsTabRoute(
        children: [
          FilmCardScreenRoute(film: film, id: film.id),
        ],
      ),
    );
  }

  @override
  void toSelection(selection) {
    context.router.navigate(SelectionsTabRoute(
        children: [SelectionScreenRoute(selection: selection)]));
  }

  @override
  void toFilmList() {
    final auth = _userData.isLoggedIn.valueOrNull ?? false;
    if (!auth) {
      context.showSnackBar("Авторизуйтесь, чтобы добавлять фильмы");
      return;
    }
    context.router.navigate(
      FilmsTabRoute(
        children: [FilmsListScreenRoute()],
      ),
    );
  }

  @override
  void toSelectionList() {
    final auth = _userData.isLoggedIn.valueOrNull ?? false;
    if (!auth) {
      context.showSnackBar("Авторизуйтесь, чтобы добавлять подборки");
      return;
    }
    context.router.push(
          CreateSearchScreenRoute(),
        );
  }
}
