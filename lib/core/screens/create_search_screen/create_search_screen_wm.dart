import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:elementary_helper/elementary_helper.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:movie_genie/core/data/model/film/film.dart';
import 'package:movie_genie/core/data/model/response_picture/response_picture.dart';
import 'package:movie_genie/core/data/model/selection/selection.dart';
import 'package:movie_genie/core/domain/favorites.dart';
import 'package:movie_genie/core/domain/selection_manager.dart';
import 'package:movie_genie/core/domain/user_data.dart';
import 'package:movie_genie/core/navigation/app_router.dart';
import 'package:movie_genie/utils/theme_provider.dart';
import 'package:provider/provider.dart';
import 'create_search_screen_model.dart';
import 'create_search_screen_widget.dart';

abstract class ICreateSearchScreenWidgetModel implements IWidgetModel, IThemeProvider {
  TextEditingController get nameController;

  EntityStateNotifier<List<Film>> get films;

  UserData get userData;

  void removeFilm(Film film);

  void deleteSelection();

  Future<void>  createSelection(Selection selection);

  Future<void> whyDoIEvenTry();

  String? get pic;

  void updatePic(String base64string);
}

CreateSearchScreenWidgetModel defaultCreateSearchScreenWidgetModelFactory(BuildContext context) {
  return CreateSearchScreenWidgetModel(
    CreateSearchScreenModel(
      context.read()
    ),
    context.read(),
    GetIt.instance.get(),
    GetIt.instance.get(),
  );
}

// TODO: cover with documentation
/// Default widget model for CreateSearchScreenWidget
class CreateSearchScreenWidgetModel extends WidgetModel<CreateSearchScreenWidget, CreateSearchScreenModel>
    with ThemeProvider
    implements ICreateSearchScreenWidgetModel {

  CreateSearchScreenWidgetModel(CreateSearchScreenModel model, this.selectionManager, this.userData, this.favorites) : super(model);

  @override
  final TextEditingController nameController = TextEditingController();

  @override
  final EntityStateNotifier<List<Film>> films = EntityStateNotifier.value([]);

  final SelectionManager selectionManager;

  @override
  final UserData userData;

  final Favorites favorites;

  String? localPic;

  @override
  void removeFilm(Film film) {
    final whyAmIDoingThis = List<Film>.from(films.value.data!);
    whyAmIDoingThis.remove(film as Film);
    films.content(whyAmIDoingThis);

  }

  void addFilm(){

  }

  @override
  void deleteSelection() {
    context.router.pop();
  }

  @override
  Future<void> whyDoIEvenTry() async{
    final film = await context.router.push(GodForsakenMeRoute(myEyesHurt: Selection(id: -1,
        owner:-1,
        tag: "tag",
        name: "name",
        pictureId: 0,
        films: films.value.data ?? <Film>[])));
    if(film == null){
      return;
    }

    final whyAmIDoingThis = List<Film>.from(films.value.data!);
    whyAmIDoingThis.add(film as Film);
    films.content(whyAmIDoingThis);
  }


  @override
  Future<void> createSelection(Selection selection) async{
    await selectionManager.create(selection);
    await favorites.addNewSel(selection);
    await selectionManager.update();
    await favorites.update();


    context.router.pop();
  }

  @override
  void updatePic(String base64string) {
    localPic = base64string;
  }

  @override
  // TODO: implement pic
  String? get pic => localPic;
}
