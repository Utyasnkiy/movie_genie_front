import 'dart:typed_data';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:movie_genie/assets/app_typography.dart';
import 'package:movie_genie/core/data/model/film/film.dart';
import 'package:movie_genie/core/navigation/app_router.dart';

class MiniBigCard extends StatelessWidget {
  const MiniBigCard({
    super.key,
    required this.bytesImage,
    required this.film,
    this.favorites = false,
  });

  final Uint8List bytesImage;
  final Film film;
  final bool favorites;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Container(
      width: 800,
      margin: const EdgeInsets.only(left: 20, top: 20, bottom: 10),
      color: colorScheme.secondary,
      child: GestureDetector(
        onTap: (){
          context.router.navigate(FilmCardScreenRoute(id: film.id, film: film));
        },
        child: Container(
          padding: const EdgeInsets.all(10),
          color: colorScheme.secondary,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.memory(
                errorBuilder: (context, __, ___) {
                  return const SizedBox(
                    width: 167,
                    height: 240,
                    child: Center(
                      child: Text("Картинка в отпуске"),
                    ),
                  );
                },
                width: 167,
                height: 240,
                bytesImage,
                fit: BoxFit.cover,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child:
                            Text(film.title, style: AppTypography.barTitle),
                      ),
                      Text("Год производства: ${film.releaseYear}",
                          style: AppTypography.barTitle),
                      Text("Страна производства: ${film.country}",
                          style: AppTypography.barTitle),
                      Text("Режиссёр: ${film.director}",
                          style: AppTypography.barTitle),
                      Text("Сборы в мире: ${film.fees}",
                          style: AppTypography.barTitle),
                      Text(
                        film.plot, style: AppTypography.barTitle,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
