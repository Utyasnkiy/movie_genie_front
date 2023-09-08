import 'package:easy_debounce/easy_debounce.dart';
import 'package:elementary_helper/elementary_helper.dart';
import 'package:flutter/material.dart';
import 'package:movie_genie/core/data/model/film/film.dart';
import 'package:movie_genie/core/data/repo/film_repo/film_repo.dart';
import 'package:movie_genie/core/domain/user_data.dart';

class FilmManager {
  FilmManager(this.repo, this.userDataRepo);

  final FilmRepo repo;
  final UserData userDataRepo;
  final String debounceId = "watchLater";
  List<Film> _watchLater = [];
  List<Film> _watchLaterCache = [];

  List<Film> _films = [];
  final EntityStateNotifier<List<Film>> watchLaterState =
      EntityStateNotifier.value([]);
  final EntityStateNotifier<List<Film>> filmsState =
      EntityStateNotifier.value([]);

  Future<void> updateWatchLater() async {
    if (!_checkAuth()) {
      return;
    }
    try {
      watchLaterState.loading(_watchLater);
      _watchLaterCache = await repo.getWatchLater();
      _watchLater = List.from(_watchLater);
      watchLaterState.content(_watchLater);
    } catch (e, st) {
      watchLaterState.error();
      debugPrint("$e \n$st");
    }
  }

  Future<void> updateFilms() async {
    try {
      filmsState.loading(_films);
      _films = await repo.getAll();
      filmsState.content(_films);
    } catch (e, st) {
      filmsState.error();
      updateFilms();
      debugPrint("kys");
      debugPrint("$e \n$st");
    }
  }

  Future<void> addToWatchLater(Film film) async {
    if (!_checkAuth()) {
      return;
    }
    try {
      EasyDebounce.debounce(debounceId, const Duration(milliseconds: 500), () {
        if (!_watchLaterCache.contains(film)) {
          repo.addToWatchLater(film.id);
        }
      });
      _watchLater.add(film);
      watchLaterState.content(_watchLater);
    } catch (e, st) {
      updateWatchLater();
      debugPrint("$e \n$st");
    }
  }

  Future<void> removeFromWatchLater(Film film) async {
    if (!_checkAuth()) {
      return;
    }
    try {
      EasyDebounce.debounce(debounceId, const Duration(milliseconds: 500), () {
        if (_watchLaterCache.contains(film)) {
          repo.removeFromWatchLater(film.id);
        }
      });
      _watchLater.remove(film);
      watchLaterState.content(_watchLater);
    } catch (e, st) {
      updateWatchLater();
      debugPrint("$e \n$st");
    }
  }

  bool _checkAuth() {
    return userDataRepo.isLoggedIn.valueOrNull ?? false;
  }
}
