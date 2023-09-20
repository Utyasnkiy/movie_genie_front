import 'dart:convert';

import 'package:auto_route/annotations.dart';
import 'package:elementary/elementary.dart';
import 'package:elementary_helper/elementary_helper.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:image_picker_web/image_picker_web.dart';
import 'package:movie_genie/assets/app_typography.dart';
import 'package:movie_genie/core/data/model/film/film.dart';
import 'package:movie_genie/core/data/model/response_picture/response_picture.dart';
import 'package:movie_genie/core/data/model/selection/selection.dart';
import 'package:movie_genie/core/screens/components/mini_film_card_screen_widget.dart';
import 'package:movie_genie/core/screens/profile_screen/profile_screen_widget.dart';
import 'create_search_screen_wm.dart';

@RoutePage()
class CreateSearchScreenWidget
    extends ElementaryWidget<ICreateSearchScreenWidgetModel> {
  const CreateSearchScreenWidget({
    Key? key,
    WidgetModelFactory wmFactory = defaultCreateSearchScreenWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(ICreateSearchScreenWidgetModel wm) {
    return Container(
      margin: const EdgeInsets.only(top: 20, left: 40, right: 40, bottom: 40),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Row(
              children: [
                SizedBox(
                  height: 30,
                  width: 300,
                  child: TextField(
                    controller: wm.nameController,
                    decoration: InputDecoration(
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                      filled: true,
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      labelText: "Введите название",
                      fillColor: wm.colorScheme.background,
                      labelStyle: AppTypography.helperText,
                    ),
                  ),
                ),
                SizedBox(
                  width: 50,
                ),
                FilledButton(
                  onPressed: () async {
                    final bytesFromPicker =
                        await ImagePickerWeb.getImageAsBytes();

                    debugPrint("pic $bytesFromPicker");
                    if (bytesFromPicker != null) {
                      final base64String = base64Encode(bytesFromPicker);
                      wm.updatePic(base64String);
                    }
                  },
                  child: const Text("Загрузить картинку"),
                ),
              ],
            ),
          ),
          Expanded(
            child: EntityStateNotifierBuilder(
                listenableEntityState: wm.films,
                builder: (context, state) {
                  return _FilmsGrid(
                    films: state ?? <Film>[],
                    onCardTap: wm.removeFilm,
                    wm: wm,
                    redactable: true,
                  );
                }),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: SizedBox(
                  height: 30,
                  child: FilledButton(
                    onPressed: () async {
                      final name = wm.nameController.text.isNotEmpty
                          ? wm.nameController.text
                          : "Безымянная подборка";

                      debugPrint("pic create ${wm.pic}");
                      await wm.createSelection(Selection(
                          id: -1,
                          owner: wm.userData.id ?? -1,
                          tag: "tag",
                          name: name,
                          picture: wm.pic ?? "wtf",
                          films: wm.films.value.data ?? <Film>[]));
                    },
                    child: const Center(
                      child: Text("Создать подборку"),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: SizedBox(
                  height: 30,
                  child: FilledButton(
                    onPressed: () => wm.deleteSelection(),
                    child: const Center(
                      child: Text("Отменить"),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _FilmsGrid extends StatelessWidget {
  const _FilmsGrid({
    super.key,
    required this.films,
    this.onCardTap,
    required this.redactable,
    required this.wm,
  });

  final List<Film> films;
  final Function(Film)? onCardTap;
  final bool redactable;
  final ICreateSearchScreenWidgetModel wm;

  @override
  Widget build(BuildContext context) {
    final localFunc = onCardTap;
    return GridView.builder(
      itemCount: films.length + 1,
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          childAspectRatio: 150 / 330,
          maxCrossAxisExtent: 250,
          mainAxisExtent: 330),
      itemBuilder: (context, index) {
        if (index == films.length || films.isEmpty) {
          return AddNewSelectionWidget.film(
            onTapNew: wm.whyDoIEvenTry,
          );
        }

        return Stack(
          children: [
            GestureDetector(
                onTap: localFunc == null ? null : () => localFunc(films[index]),
                child: MiniCard.film(film: films[index])),
            if (redactable)
              Positioned(
                top: 5,
                right: 5,
                child: GestureDetector(
                  onTap: () {
                    wm.removeFilm(films[index]);
                  },
                  child: const Icon(
                    Icons.delete,
                    color: Colors.red,
                    size: 50,
                  ),
                ),
              ),
          ],
        );
      },
    );
  }
}
