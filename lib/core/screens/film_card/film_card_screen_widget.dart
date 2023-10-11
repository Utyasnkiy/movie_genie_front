import 'dart:convert';
import 'dart:typed_data';

import 'package:auto_route/annotations.dart';
import 'package:elementary/elementary.dart';
import 'package:elementary_helper/elementary_helper.dart';
import 'package:flutter/material.dart';
import 'package:movie_genie/core/data/model/film/film.dart';
import 'package:movie_genie/core/data/model/response_picture/response_picture.dart';

import 'film_card_screen_wm.dart';

@RoutePage()
class FilmCardScreenWidget
    extends ElementaryWidget<IFilmCardScreenWidgetModel> {
  const FilmCardScreenWidget({
    @PathParam("id")
    required int id,
    required this.film,
    Key? key,
    WidgetModelFactory wmFactory = defaultFilmCardScreenWidgetModelFactory,
  }) : super(wmFactory, key: key);


  final Film film;

  @override
  Widget build(IFilmCardScreenWidgetModel wm) {
    final bytesImage =
        const Base64Decoder().convert(film.picture ?? "");
    return Scaffold(
      body: EntityStateNotifierBuilder(
        listenableEntityState: wm.filmManager.watchLaterState,
        builder: (context, state) {
          final local = state ??[];
          return Card(
            wm: wm,
            bytesImage: bytesImage,
            film: film,
            favorites: local.contains(film),
          );
        },
        loadingBuilder: (context, state ) {
          final local = state ??[];
          return Card(bytesImage: bytesImage, film: film, wm: wm, favorites: local.contains(film),);
        },
      ),
    );
  }
}

class Card extends StatelessWidget {
  const Card({
    super.key,
    required this.bytesImage,
    required this.film,
    this.favorites = false, required this.wm,
  });

  final Uint8List bytesImage;
  final Film film;
  final bool favorites;
  final IFilmCardScreenWidgetModel wm;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(20),
      children: [
        Container(
          color: wm.colorScheme.secondary,
          child: Container(
            padding: const EdgeInsets.all(10),
            color: wm.colorScheme.secondary,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.memory(
                  errorBuilder: (context, __, ___) {
                    if(film.picture == "loading"){
                      return const SizedBox(
                        width: 300,
                        height: 600,
                        child: Center(
                          child: CircularProgressIndicator(),
                        ),
                      );
                    }

                    return const SizedBox(
                      width: 300,
                      height: 600,
                      child: Center(
                        child: Text("Картинка в отпуске"),
                      ),
                    );
                  },
                  width: 300,
                  height: 600,
                  bytesImage,
                  fit: BoxFit.contain,
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Text(film.title,
                              style: wm.textTheme.headlineLarge),
                        ),
                        Text("Год производства: ${film.releaseYear}"),
                        Text("Страна производства: ${film.country}"),
                        Text("Режиссёр: ${film.director}"),
                        Text("Сборы в мире: ${film.fees} \$"),
                        Text(
                          film.plot,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 30, bottom: 50),
          child: Row(
            children: [
              const SizedBox(
                width: 330,
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 185,
                      height: 30,
                      child: Stack(
                        children: [

                          FilledButton(
                            onPressed: () => wm.onWatchLater(film),
                            child: const Center(
                              child: Text("Буду смотреть"),
                            ),

                          ),
                          if(favorites)
                            Positioned(
                              right: 5,
                              top: -1,
                              child: Image.asset(
                                "assets/bookmark.png",
                                height: 28,
                              ),
                            )

                        ],
                      ),
                    ),

                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
