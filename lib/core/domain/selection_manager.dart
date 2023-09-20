import 'package:elementary_helper/elementary_helper.dart';
import 'package:flutter/material.dart';
import 'package:movie_genie/core/data/model/film/film.dart';
import 'package:movie_genie/core/data/model/selection/selection.dart';
import 'package:movie_genie/core/data/repo/selection_repo/selection_repo.dart';
import 'package:movie_genie/core/data/request/update_selection_cover/update_selection_cover.dart';
import 'package:movie_genie/core/domain/user_data.dart';

class SelectionManager {
  List<Selection> _selections = [];
  final EntityStateNotifier<List<Selection>> selectionsState =
      EntityStateNotifier.value([]);

  final UserData userData;
  final SelectionRepo selectionRepo;

  SelectionManager(this.userData, this.selectionRepo);

  Future<void> updateCover(String base64, int selectionId) async {
    try {
      await selectionRepo.updateCover(
        UpdateSelectionCoverRequest(
          pictureType: "JPEG",
          picture: base64,
          selectionId: selectionId,
        ),
      );
    } catch (e, st) {
      debugPrint("$e \n$st");
    }
  }

  Future<void> update() async {
    try {
      selectionsState.loading(_selections);
      _selections = await selectionRepo.getAll();

      for (int i = 0; i < _selections.length; i++) {
        final sel = _selections[i];
        final films = <Film>[];
        final pic = userData.getCachedPicture(sel.pictureId ?? 0);

        for (int j = 0; j < sel.films.length; j++) {
          final currFilm = sel.films[j];

          final pic = userData.getCachedPicture(currFilm.pictureId);
          if (pic == "loading") {
            final loadedPic =
                await selectionRepo.getPicture(currFilm.pictureId);

            userData.cachePicture(loadedPic.data, currFilm.pictureId);
            final newFilm = currFilm.copyWith(picture: loadedPic.data ?? "");
            films.add(newFilm);
          } else {
            final newFilm = currFilm.copyWith(picture: pic);
            films.add(newFilm);
          }
        }

        if (pic == "loading") {
          final loadedPic = await selectionRepo.getPicture(sel.pictureId ?? 0);

          userData.cachePicture(loadedPic.data, sel.pictureId ?? 0);

          _selections[i] =
              sel.copyWith(picture: loadedPic.data ?? "", films: films);
        } else {
          _selections[i] = sel.copyWith(picture: pic, films: films);
        }

        selectionsState.loading(_selections);
      }

      selectionsState.content(_selections);
    } catch (e, st) {
      selectionsState.error();
      debugPrint("$e \n$st");
    }
  }

  Future<Selection?> create(Selection selection) async {
    try {
      final id = await selectionRepo.create(selection);

      final newSel = selection.copyWith(id: id);
      _selections.add(newSel);
      selectionsState.content(_selections);
      await update();
      return newSel;
    } catch (e, st) {
      selectionsState.error();
      debugPrint("$e \n$st");
      return null;
    }
  }

  Future<void> addToSelection(Selection selection, Film film) async {
    if (!_checkAuth()) {
      return;
    }



    try {
      _selections.remove(selection);
      final films = List.of(selection.films)..add(film);
      final newSelection = selection.copyWith(
        films: films,
      );
      _selections.add(newSelection);

      await selectionRepo.addFilmToSelection(
        selectionId: selection.id,
        filmId: film.id,
      );
      await update();
    } catch (e, st) {
      update();
      debugPrint("selection addToSelection $e, \n$st");
    }
  }

  Future<void> removeFromSelection(Selection selection, Film film) async {
    if (!_checkAuth()) {
      return;
    }

    try {
      _selections.remove(selection);
      final asdas = List<Film>.from(selection.films);
      asdas.remove(film);
      final newSelection = selection.copyWith(
        films: asdas,
      );
      _selections.add(newSelection);
      selectionsState.content(_selections);
      await selectionRepo.deleteFromSelection(
        selectionId: selection.id,
        filmId: film.id,
      );
      update();
    } catch (e, st) {
      update();
      debugPrint("selection removeFromSelection $e, \n$st");
    }
  }

  bool _checkAuth() {
    return userData.isLoggedIn.value;
  }

  Future<void> delete(int id) async {
    try {
      await selectionRepo.delete(id);
    } catch (e, st) {
      update();
      debugPrint("selection removeFromSelection $e, \n$st");
    }
  }
}
