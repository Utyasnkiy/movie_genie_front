import 'package:auto_route/annotations.dart';
import 'package:elementary/elementary.dart';
import 'package:elementary_helper/elementary_helper.dart';
import 'package:flutter/material.dart';
import 'package:movie_genie/core/data/model/film/film.dart';
import 'package:movie_genie/core/data/model/response_picture/response_picture.dart';
import 'package:movie_genie/core/screens/components/mini_film_card_screen_widget.dart';

import 'films_list_screen_wm.dart';

@RoutePage()
class FilmsListScreenWidget
    extends ElementaryWidget<IFilmsListScreenWidgetModel> {
  const FilmsListScreenWidget({
    Key? key,
    WidgetModelFactory wmFactory = defaultFilmsListScreenWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(IFilmsListScreenWidgetModel wm) {

    return Container(
      decoration: BoxDecoration(
        color: wm.colorScheme.secondaryContainer,
        borderRadius: const BorderRadius.all(Radius.circular(8)),
      ),
      margin: const EdgeInsets.only(left: 40, right: 40, top: 20),

      child: Column(
        children: [
          const Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.only(top: 20, bottom: 40),
              child: Text("Фильмы"),
            ),
          ),
          Expanded(
            child: EntityStateNotifierBuilder(
                listenableEntityState: wm.filmManager.filmsState,
                loadingBuilder: (context, films) {
                  final filmsLocal = films ?? [];
                  if (filmsLocal.isEmpty) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                  return FilmsGrid(films: filmsLocal, onCardTap: wm.onCardTap);
                },
                builder: (context, films) {
                  return FilmsGrid(films: films ?? [], onCardTap: wm.onCardTap,);
                }),
          ),
        ],
      ),
    );
  }
}

class FilmsGrid extends StatelessWidget {
  const FilmsGrid({super.key, required this.films, this.onCardTap});

  final List<Film> films;
  final Function(Film)? onCardTap;

  @override
  Widget build(BuildContext context) {

    final localFunc = onCardTap;
    return GridView.builder(
        itemCount: films.length,
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(

            childAspectRatio: 150/330,
        maxCrossAxisExtent: 250,
        mainAxisExtent: 330),
        itemBuilder: (context, index) {
          return GestureDetector(
              onTap: localFunc == null ? null :() => localFunc(films[index]),
              child: MiniCard.film(film: films[index]));
        });
  }
}
