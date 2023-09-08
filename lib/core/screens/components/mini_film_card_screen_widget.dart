import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:movie_genie/core/data/model/film/film.dart';
import 'package:movie_genie/core/data/model/selection/selection.dart';

class MiniCard extends StatelessWidget {
  final String title;
  final String picture;
  final bool isWide;
  final Base64Decoder decoder = const Base64Decoder();

  const MiniCard({
    super.key,
    required this.title,
    required this.picture,
    required this.isWide,
  });

  MiniCard.film({
    super.key,
    required Film film,
  })  : title = film.title,
        picture = film.responsePictureDto.data,
        isWide = false;

  MiniCard.selection({
    super.key,
    required Selection selection,
  })  : title = selection.name,
        picture = selection.responsePictureDto.data,
        isWide = true;

  @override
  Widget build(BuildContext context) {
    final bytesImage = decoder.convert(picture);
    return SizedBox(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.memory(errorBuilder: (context, __, ___) {
            return Container(
              width: isWide ? 280 : 150,
              height: isWide ? 170 : 225,
              child: const Center(
                child: Text("Картинка в отпуске"),
              ),
            );
          },
              width: isWide ? 280 : 150,
              height: isWide ? 170 : 225,
              bytesImage,
              fit: BoxFit.contain,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Center(
              child: Text(
                title,
              ),
            ),
          ),
        ],
      ),
    );
  }
}