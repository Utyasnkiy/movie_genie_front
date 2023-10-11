import 'package:easy_debounce/easy_debounce.dart';
import 'package:elementary_helper/elementary_helper.dart';
import 'package:flutter/material.dart';
import 'package:movie_genie/core/data/model/film/film.dart';
import 'package:movie_genie/core/data/repo/film_repo/film_repo.dart';
import 'package:movie_genie/core/domain/user_data.dart';

class FilmManager {
  FilmManager(this.repo, this.userData);

  final FilmRepo repo;
  final UserData userData;
  final String debounceId = "watchLater";
  List<Film> _watchLater = [];
  List<Film> _watchLaterCache = [];


  List<Film> _films = [];
  List<Film> _search = [];

  List<Film> get iHateThis => _films;
  final EntityStateNotifier<List<Film>> watchLaterState =
  EntityStateNotifier.value([]);
  final EntityStateNotifier<List<Film>> filmsState =
  EntityStateNotifier.value([]);

  Future<void> search(String search) async {
    try {
      filmsState.loading(_search);
      _search = [];
      final dto = await repo.search(search);
      _search.addAll(dto.title_films);
      _search.addAll(dto.plot_films);
      await updateSearchPics();
      filmsState.content(_search);
    } catch (e, st) {
      debugPrint("$e \n$st");
    }
  }

  Future<void> updateSearchPics() async {
    try {
      for (int i = 0; i < _search.length; i++) {
        final sel = _search[i];

        final pic = userData.getCachedPicture(sel.pictureId);
        if (pic == "loading") {
          final loadedPic = await repo.getPicture(sel.pictureId);

          userData.cachePicture(loadedPic.data, sel.pictureId);
          _search[i] = sel.copyWith(picture: loadedPic.data ?? "");
        } else {
          _search[i] = sel.copyWith(picture: pic);
        }
        filmsState.loading(_search);
      }
    } catch (e, st) {
      debugPrint("$e \n$st");
    }
  }

  Future<void> updateWatchLater() async {
    if (!checkAuth()) {
      return;
    }
    try {
      watchLaterState.loading(_watchLater);
      _watchLater = await repo.getWatchLater();
      updatePicsWatchLater();
      _watchLaterCache = List.from(_watchLater);
      watchLaterState.content(_watchLaterCache);
    } catch (e, st) {
      debugPrint("$e \n$st");
    }
  }

  Future<void> updatePics() async {
    try {
      for (int i = 0; i < _films.length; i++) {
        final sel = _films[i];

        final pic = userData.getCachedPicture(sel.pictureId);
        if (pic == "loading") {
          final loadedPic = await repo.getPicture(sel.pictureId);

          userData.cachePicture(loadedPic.data, sel.pictureId);
          _films[i] = sel.copyWith(picture: loadedPic.data ?? "");
        } else {
          _films[i] = sel.copyWith(picture: pic);
        }
        filmsState.loading(_films);
      }
    } catch (e, st) {
      debugPrint("$e \n$st");
    }
  }

  Future<void> updatePicsWatchLater() async {
    try {
      for (int i = 0; i < _watchLater.length; i++) {
        final sel = _watchLater[i];

        final pic = userData.getCachedPicture(sel.pictureId);
        if (pic == "loading") {
          final loadedPic = await repo.getPicture(sel.pictureId);

          userData.cachePicture(loadedPic.data, sel.pictureId);
          _watchLater[i] = sel.copyWith(picture: loadedPic.data ?? "");
        } else {
          _watchLater[i] = sel.copyWith(picture: pic);
        }
        watchLaterState.loading(_watchLater);
      }
    } catch (e, st) {
      debugPrint("$e \n$st");
    }
  }

  Future<void> updateFilms() async {
    try {
      filmsState.loading(_films);
      _films = await repo.getAll();
      await updatePics();
      filmsState.content(_films);
    } catch (e, st) {
      filmsState.error();
      debugPrint("$e \n$st");
    }
  }

  Future<void> addToWatchLater(Film film) async {
    if (!checkAuth()) {
      return;
    }
    EasyDebounce.debounce(debounceId, const Duration(milliseconds: 500),
            () async {
          if (!_watchLaterCache.contains(film)) {
            try {
              await repo.addToWatchLater(film.id);
            } catch (e, st) {
              updateWatchLater();
              debugPrint("$e \n$st");
            }
          }
        });
    _watchLater.add(film);
    watchLaterState.content(_watchLater);
  }

  Future<void> removeFromWatchLater(Film film) async {
    if (!checkAuth()) {
      return;
    }
    EasyDebounce.debounce(debounceId, const Duration(milliseconds: 500),
            () async {
          if (_watchLaterCache.contains(film)) {
            try {
              repo.removeFromWatchLater(film.id);
            } catch (e, st) {
              updateWatchLater();
              debugPrint("$e \n$st");
            }
          }
        });
    _watchLater.remove(film);
    watchLaterState.content(_watchLater);
  }

  void unAuth() {
    _watchLater = [];
    _watchLaterCache = [];
    watchLaterState.content([]);
  }

  bool checkAuth() {
    return userData.isLoggedIn.valueOrNull ?? false;
  }
}
