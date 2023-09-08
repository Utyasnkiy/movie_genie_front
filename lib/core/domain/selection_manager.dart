import 'package:elementary/elementary.dart';
import 'package:elementary_helper/elementary_helper.dart';
import 'package:flutter/material.dart';
import 'package:movie_genie/core/data/model/film/film.dart';
import 'package:movie_genie/core/data/model/selection/selection.dart';
import 'package:movie_genie/core/data/repo/selection_repo/selection_repo.dart';
import 'package:movie_genie/core/domain/user_data.dart';

class SelectionManager {
  List<Selection> _selections = [];
  final EntityStateNotifier<List<Selection>> selectionsState =
      EntityStateNotifier.value([]);

  final UserData userData;
  final SelectionRepo selectionRepo;

  SelectionManager(this.userData, this.selectionRepo);

  Future<void> update() async {


    try {
      selectionsState.loading(_selections);
      _selections = await selectionRepo.getAll();

      selectionsState.content(_selections);
    } catch (e, st) {
      selectionsState.error();
      debugPrint("$e \n$st");
    }
  }

  Future<void> addToSelection(Selection selection, Film film) async {
    if (!_checkAuth()) {
      return;
    }

    if (!_selections.contains(selection)) {
      return;
    }

    try {
      _selections.remove(selection);
      final newSelection = selection.copyWith(
        films: List.of(selection.films)..add(film),
      );
      _selections.add(newSelection);
      selectionRepo.addFilmToSelection(
        selectionId: selection.id,
        filmId: film.id,
      );
    } catch (e, st) {
      update();
      debugPrint("selection addToSelection $e, \n$st");
    }
  }

  Future<void> removeFromSelection(Selection selection, Film film) async {
    if (!_checkAuth()) {
      return;
    }

    if (!_selections.contains(selection)) {
      return;
    }

    try {
      _selections.remove(selection);
      final newSelection = selection.copyWith(
        films: List.of(selection.films)..add(film),
      );
      _selections.add(newSelection);
      selectionRepo.addFilmToSelection(
        selectionId: selection.id,
        filmId: film.id,
      );
    } catch (e, st) {
      update();
      debugPrint("selection removeFromSelection $e, \n$st");
    }
  }

  bool _checkAuth() {
    return userData.isLoggedIn.value;
  }
}
