import 'package:easy_debounce/easy_debounce.dart';
import 'package:elementary/elementary.dart';
import 'package:elementary_helper/elementary_helper.dart';
import 'package:flutter/material.dart';
import 'package:movie_genie/core/domain/user_data.dart';
import 'package:movie_genie/core/data/model/selection/selection.dart';
import 'package:movie_genie/core/data/repo/selection_repo/selection_repo.dart';
import 'package:rxdart/rxdart.dart';

class Favorites {
  final EntityStateNotifier<List<Selection>> favoriteSelections = EntityStateNotifier();

  List<Selection> _favorites = [];

  Favorites(this.repo, this.userDataRepo);

  final SelectionRepo repo;
  final UserData userDataRepo;
  final String debounceId = "favorites";

  Future<void> update() async {
    if (!_checkAuth()) {
      return;
    }
    try {
      favoriteSelections.loading(_favorites);
      _favorites = await repo.getFavorites();
      favoriteSelections.content(_favorites);
    } catch (e, st) {
      debugPrint("$e \n$st");
    }
  }

  Future<void> addToFavorites(Selection selection) async {
    try {
      EasyDebounce.debounce(debounceId, const Duration(milliseconds: 500),
          () => repo.saveToFavorites(selection.id));
      _favorites.add(selection);
      favoriteSelections.content(_favorites);
    } catch (e, st) {
      update();
      debugPrint("$e \n$st");
    }
  }

  Future<void> removeFromFavorites(Selection selection) async {
    try {
      EasyDebounce.debounce(debounceId, const Duration(milliseconds: 500),
              () => repo.removeFromFavorites(selection.id));
      _favorites.remove(selection);
      favoriteSelections.content(_favorites);
    } catch (e, st) {
      update();
      debugPrint("$e \n$st");
    }
  }


  bool _checkAuth() {
    return userDataRepo.isLoggedIn.valueOrNull ?? false;
  }
}
