import 'dart:convert';
import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:elementary_helper/elementary_helper.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:movie_genie/core/data/model/film/film.dart';
import 'package:movie_genie/core/data/model/selection/selection.dart';
import 'package:movie_genie/core/domain/favorites.dart';
import 'package:movie_genie/core/domain/selection_manager.dart';
import 'package:movie_genie/core/domain/user_data.dart';
import 'package:movie_genie/core/navigation/app_router.dart';
import 'package:movie_genie/utils/snackbar_ext.dart';
import 'package:movie_genie/utils/theme_provider.dart';
import 'package:provider/provider.dart';
import 'package:rxdart/rxdart.dart';

import 'selection_screen_model.dart';
import 'selection_screen_widget.dart';

abstract class ISelectionScreenWidgetModel
    implements IWidgetModel, IThemeProvider {
  BehaviorSubject<Selection> get selection;

  EntityStateNotifier<List<Film>> get films;

  void onCardTap(Film film);

  Favorites get favorites;

  BehaviorSubject<bool> get picLoading;

  bool get redactable;

  SelectionManager get selectionManager;

  void removeFilm(Selection selection, Film film);

  void addFilm(Selection selection, Film film);

  void addSelection(Selection selection);

  onTapRemove(Selection selection);

  Future<void> deleteSelection(Selection selection);

  Future<void> onTapNew();

  Future<void> uploadPicture(String base64);
}

SelectionScreenWidgetModel defaultSelectionScreenWidgetModelFactory(
    BuildContext context) {
  return SelectionScreenWidgetModel(
    SelectionScreenModel(
      context.read(),
    ),
    GetIt.instance.get(),
    context.read<SelectionManager>(),
    GetIt.instance.get(),
  );
}

// TODO: cover with documentation
/// Default widget model for SelectionScreenWidget
class SelectionScreenWidgetModel
    extends WidgetModel<SelectionScreenWidget, SelectionScreenModel>
    with ThemeProvider
    implements ISelectionScreenWidgetModel {
  SelectionScreenWidgetModel(
      SelectionScreenModel model, this.favorites, this.selectionManager, this.userData)
      : super(model);

  @override
  void onCardTap(Film film) {
    context.router.navigate(
      FilmsTabRoute(
        children: [
          FilmCardScreenRoute(film: film, id: film.id),
        ],
      ),
    );
  }

  @override
  void initWidgetModel() {
    // TODO: implement initWidgetModel
    super.initWidgetModel();
    _selection = widget.selection;
    selection.add(widget.selection);
    films.content(_selection?.films ??[]);
  }

  @override
  void addSelection(Selection selection) {
    if (!favorites.checkAuth()) {
      context.showSnackBar("Авторизуйтесь чтобы добавлять подборки");
      return;
    }
    favorites.addToFavorites(selection);
  }

  @override
  final Favorites favorites;

  final UserData userData;

  @override
  onTapRemove(Selection selection) {
    if (!favorites.checkAuth()) {
      context.showSnackBar("Авторизуйтесь чтобы добавлять подборки");
      return;
    }
    favorites.removeFromFavorites(selection);
  }

  @override
  void removeFilm(Selection sel, Film film){

    final filmsas = List<Film>.from(_selection?.films ?? <Film>[]);
    filmsas.remove(film);
    _selection = _selection?.copyWith(films: filmsas);
    selection.add(_selection!);
    films.content(filmsas);
    selectionManager.removeFromSelection(sel, film);

  }

  @override
  void addFilm(Selection sel, Film film){
    final films = List<Film>.from(_selection?.films ?? <Film>[]);
    films.add(film);
    _selection = _selection?.copyWith(films: films);
    selection.add(_selection!);
    selectionManager.addToSelection(sel, film);
  }

  @override
  final SelectionManager selectionManager;

  @override
  bool get redactable => widget.selection.owner == userData.id || userData.role == "ADMIN";

  @override
  Future<void> deleteSelection(Selection selection) async{
    await selectionManager.delete(selection.id);
    await favorites.removeFromFavorites(selection);
    await selectionManager.update();
    await favorites.update();
    context.router.popUntilRoot();
  }

  Selection? _selection;

  @override
  // TODO: implement selection
  final BehaviorSubject<Selection> selection = BehaviorSubject();

  @override
  // TODO: implement films
  final EntityStateNotifier<List<Film>> films =EntityStateNotifier.value([]);

  @override
  Future<void> onTapNew() async{
    debugPrint("before");
    final film = await context.router.push(GodForsakenMeRoute(myEyesHurt: widget.selection.copyWith(films: films.value.data ?? [])));
    debugPrint("after");
    if(film == null){
      debugPrint("null");
      return;
    }


    final whyAmIDoingThis = List<Film>.from(films.value.data!);
    whyAmIDoingThis.add(film as Film);
    films.content(whyAmIDoingThis);
    await selectionManager.addToSelection(widget.selection, film);
    debugPrint("afteradd");
  }

  @override
  Future<void> uploadPicture(String base64) async{
    picLoading.add(true);
    try {
      await selectionManager.updateCover(base64, widget.selection.id);
      selectionManager.update();
      favorites.update();
      context.showSnackBar("Картинка изменена");
      picLoading.add(false);
    }
    catch(e){
      context.showSnackBar("Что-то пошло не так");
      picLoading.add(false);
    }
  }

  @override
  // TODO: implement picLoading
  BehaviorSubject<bool> get picLoading => BehaviorSubject.seeded(false);


}
