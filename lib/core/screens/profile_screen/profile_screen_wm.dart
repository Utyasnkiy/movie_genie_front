import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:movie_genie/core/domain/favorites.dart';
import 'package:movie_genie/core/domain/film_manager.dart';
import 'package:movie_genie/core/domain/user_data.dart';
import 'package:movie_genie/utils/theme_provider.dart';
import 'package:provider/provider.dart';
import 'profile_screen_model.dart';
import 'profile_screen_widget.dart';

abstract class IProfileScreenWidgetModel implements IWidgetModel, IThemeProvider {
  FilmManager get filmManager;
  Favorites get favorites;

  ScrollController get mainController;
  ScrollController get favoritesController;
  ScrollController get watchLaterController;
}

ProfileScreenWidgetModel defaultProfileScreenWidgetModelFactory(BuildContext context) {
  return ProfileScreenWidgetModel(
    ProfileScreenModel(
      context.read()
    ),
    context.read<Favorites>(),
    context.read<FilmManager>(),
    GetIt.instance.get<UserData>()
  );
}

// TODO: cover with documentation
/// Default widget model for ProfileScreenWidget
class ProfileScreenWidgetModel
    extends WidgetModel<ProfileScreenWidget, ProfileScreenModel>
    with ThemeProvider
    implements IProfileScreenWidgetModel {

  ProfileScreenWidgetModel(ProfileScreenModel model, this.favorites, this.filmManager, this._userData) : super(model);



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
}
