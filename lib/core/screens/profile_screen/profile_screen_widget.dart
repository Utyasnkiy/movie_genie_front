import 'package:auto_route/annotations.dart';
import 'package:elementary/elementary.dart';
import 'package:elementary_helper/elementary_helper.dart';
import 'package:flutter/material.dart';
import 'package:movie_genie/core/data/model/film/film.dart';
import 'package:movie_genie/core/data/model/selection/selection.dart';
import 'package:movie_genie/core/screens/components/mini_film_card_screen_widget.dart';

import 'profile_screen_wm.dart';

@RoutePage()
class ProfileScreenWidget extends ElementaryWidget<IProfileScreenWidgetModel> {
  const ProfileScreenWidget({
    Key? key,
    WidgetModelFactory wmFactory = defaultProfileScreenWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(IProfileScreenWidgetModel wm) {
    return ListView(
      scrollDirection: Axis.vertical,
      padding:
          const EdgeInsets.only(top: 46, left: 120, right: 120, bottom: 30),
      children: [
        Align(
          alignment: Alignment.center,
          child: Container(
            decoration: BoxDecoration(
              color: wm.colorScheme.secondary,
              borderRadius: BorderRadius.circular(10),
            ),
            width: 370,
            height: 60,
            margin: const EdgeInsets.only(bottom: 40),
            child: const Center(child: Text("Личный кабинет")),
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: Container(
            decoration: BoxDecoration(
              color: wm.colorScheme.secondary,
              borderRadius: BorderRadius.circular(10),
            ),
            height: 40,
            width: 200,
            margin: const EdgeInsets.only(bottom: 10),
            child: const Center(child: Text("Подборки")),
          ),
        ),
        EntityStateNotifierBuilder(
          listenableEntityState: wm.favorites.favoriteState,
          loadingBuilder: (context, state) {
            final selections = state ?? [];
            if (selections.isEmpty) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            return _FavoritesSlider(wm: wm, selections: selections);
          },
          builder: (context, state) {
            final selections = state ?? [];
            return _FavoritesSlider(wm: wm, selections: selections);
          },
        ),
        Align(
          alignment: Alignment.center,
          child: Container(
            decoration: BoxDecoration(
              color: wm.colorScheme.secondary,
              borderRadius: BorderRadius.circular(10),
            ),
            height: 40,
            width: 200,
            margin: const EdgeInsets.symmetric(vertical: 10),
            child: const Center(child: Text("Буду смотреть")),
          ),
        ),
        EntityStateNotifierBuilder(
          listenableEntityState: wm.filmManager.watchLaterState,
          loadingBuilder: (context, state) {
            final films = state ?? [];
            if (films.isEmpty) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            return _FilmsSlider(wm: wm, films: films);
          },
          builder: (context, state) {
            final films = state ?? [];
            return _FilmsSlider(wm: wm, films: films);
          },
        ),
      ],
    );
  }
}

class _FavoritesSlider extends StatelessWidget {
  const _FavoritesSlider(
      {super.key, required this.wm, required this.selections});

  final IProfileScreenWidgetModel wm;
  final List<Selection> selections;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondary,
        borderRadius: BorderRadius.circular(10),
      ),
      height: 230,
      child: Scrollbar(
        controller: wm.favoritesController,
        child: ListView.builder(
          controller: wm.favoritesController,
          scrollDirection: Axis.horizontal,
          itemCount: selections.length + 1,
          itemBuilder: (context, index) {
            if (index == selections.length) {
              return Padding(
                padding: const EdgeInsets.only(top: 10),
                child: AddNewSelectionWidget.selection(onTapNew: wm.toSelectionList),
              );
            }
            return Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: GestureDetector(
                  onTap: () => wm.toSelection(selections[index]),
                  child: MiniCard.selection(selection: selections[index])),
            );
          },
        ),
      ),
    );
  }
}

class _FilmsSlider extends StatelessWidget {
  const _FilmsSlider({super.key, required this.wm, required this.films});

  final IProfileScreenWidgetModel wm;
  final List<Film> films;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondary,
        borderRadius: BorderRadius.circular(10),
      ),
      height: 320,
      child: Scrollbar(
        controller: wm.watchLaterController,
        child: ListView.builder(
          controller: wm.watchLaterController,
          scrollDirection: Axis.horizontal,
          itemCount: films.length + 1,

          itemBuilder: (context, index) {
            if (index == films.length) {
              return Padding(
                padding: const EdgeInsets.only(top: 10),
                child: AddNewSelectionWidget.film(onTapNew: wm.toFilmList),
              );
            }
            return GestureDetector(
              onTap: () => wm.toFilm(films[index]),
              child: Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15, top: 10),
                child: Align(
                    alignment: Alignment.topCenter,
                    child: MiniCard.film(film: films[index])),
              ),
            );
          },
        ),
      ),
    );
  }
}

class AddNewSelectionWidget extends StatelessWidget {
  const AddNewSelectionWidget(
      {super.key, this.onTapNew, required this.isWide});

  const AddNewSelectionWidget.film({super.key, this.onTapNew})
      : isWide = false;

  const AddNewSelectionWidget.selection({super.key, this.onTapNew})
      : isWide = true;

  final VoidCallback? onTapNew;
  final bool isWide;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTapNew,
      child: Align(
        alignment: Alignment.topCenter,
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 15),
          width: isWide ? 280 : 150,
          height: isWide ? 170 : 225,
          decoration: BoxDecoration(
            color: Colors.white10,
            borderRadius: BorderRadius.circular(10),
          ),
          child: const Center(
            child: Icon(
              Icons.add,
              size: 50,
              color: Colors.black54,
            ),
          ),
        ),
      ),
    );
  }
}
