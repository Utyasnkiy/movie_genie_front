import 'package:easy_debounce/easy_debounce.dart';
import 'package:elementary_helper/elementary_helper.dart';
import 'package:flutter/material.dart';
import 'package:movie_genie/core/data/model/film/film.dart';
import 'package:movie_genie/core/data/model/selection/selection.dart';
import 'package:movie_genie/core/data/repo/selection_repo/selection_repo.dart';
import 'package:movie_genie/core/domain/user_data.dart';

class Favorites {
  final EntityStateNotifier<List<Selection>> favoriteState =
      EntityStateNotifier();

  List<Selection> _favorites = [];
  List<Selection> _favoritesCache = [];

  Favorites(this.repo, this.userDataRepo);

  final SelectionRepo repo;
  final UserData userDataRepo;
  final String debounceId = "favorites";

  Future<void> update() async {
    if (!checkAuth()) {
      return;
    }
    try {
      favoriteState.loading(_favorites);
      _favorites = await repo.getFavorites();
      for (int i = 0; i < _favorites.length; i++) {
        final sel = _favorites[i];
        final films = <Film>[];
        final pic = userDataRepo.getCachedPicture(sel.pictureId ?? 0);

        for (int j = 0; j < sel.films.length; j++) {
          final currFilm = sel.films[j];

          final pic = userDataRepo.getCachedPicture(currFilm.pictureId);
          if (pic == "loading") {
            final loadedPic =
            await repo.getPicture(currFilm.pictureId);

            userDataRepo.cachePicture(loadedPic.data, currFilm.pictureId);
            final newFilm = currFilm.copyWith(picture: loadedPic.data ?? "");
            films.add(newFilm);
          } else {
            final newFilm = currFilm.copyWith(picture: pic);
            films.add(newFilm);
          }
        }

        if (pic == "loading") {
          final loadedPic = await repo.getPicture(sel.pictureId ?? 0);

          userDataRepo.cachePicture(loadedPic.data, sel.pictureId ?? 0);

          _favorites[i] =
              sel.copyWith(picture: loadedPic.data ?? "", films: films);
        } else {
          _favorites[i] = sel.copyWith(picture: pic, films: films);
        }

        favoriteState.loading(_favorites);
      }


      _favoritesCache = List.from(_favorites);
      favoriteState.content(_favorites);
    } catch (e, st) {
      debugPrint("$e \n$st");
    }
  }

  Future<void> addToFavorites(Selection selection) async {
    if(!checkAuth()){
      return;
    }
    try {
      EasyDebounce.debounce(debounceId, const Duration(milliseconds: 500),
          () async {
        if (!_favoritesCache.contains(selection)) {
          await repo.saveToFavorites(selection.id);
          update();
        }
      });
      _favorites.add(selection);
      favoriteState.content(_favorites);
    } catch (e, st) {
      update();
      debugPrint("$e \n$st");
    }
  }

  Future<void> removeFromFavorites(Selection selection) async {
    if(!checkAuth()){
      return;
    }
    try {
      EasyDebounce.debounce(debounceId, const Duration(milliseconds: 500),
          () async {
        if (_favoritesCache.contains(selection)) {
          await repo.removeFromFavorites(selection.id);
          update();
        }
      });
      _favorites.remove(selection);
      favoriteState.content(_favorites);
    } catch (e, st) {
      update();
      debugPrint("$e \n$st");
    }
  }

  bool checkAuth() {
    return userDataRepo.isLoggedIn.valueOrNull ?? false;
  }

  void unAuth() {
    _favorites = [];
    favoriteState.content([]);
  }

  Future<void> addNewSel(Selection? value) async{
    if(value == null){
      return;
    }

    _favorites.add(value);
    update();
  }
}
