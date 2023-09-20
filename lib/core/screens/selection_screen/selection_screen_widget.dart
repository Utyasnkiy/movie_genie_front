import 'dart:convert';

import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:elementary_helper/elementary_helper.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:image_picker_web/image_picker_web.dart';
import 'package:movie_genie/core/data/model/film/film.dart';
import 'package:movie_genie/core/data/model/selection/selection.dart';
import 'package:movie_genie/core/screens/components/mini_film_card_screen_widget.dart';
import 'package:movie_genie/core/screens/profile_screen/profile_screen_widget.dart';

import 'selection_screen_wm.dart';

@RoutePage()
class SelectionScreenWidget
    extends ElementaryWidget<ISelectionScreenWidgetModel> {
  const SelectionScreenWidget({
    required this.selection,
    Key? key,
    WidgetModelFactory wmFactory = defaultSelectionScreenWidgetModelFactory,
  }) : super(wmFactory, key: key);

  final Selection selection;

  @override
  Widget build(ISelectionScreenWidgetModel wm) {
    return EntityStateNotifierBuilder(
      listenableEntityState: wm.favorites.favoriteState,
      builder: (context, state) {
        final local = state ?? [];

        return EntityStateNotifierBuilder<List<Film>>(
            listenableEntityState: wm.films,
            builder: (context, snapshot) {
              final selec = snapshot ?? [];

              return _SelectionCard(
                wm: wm,
                selection: selection.copyWith(films: selec),
                onTapAdd: wm.addSelection,
                onTapCard: wm.onCardTap,
                fav: local.contains(selection),
                onTapRemove: wm.onTapRemove,
                redactable: wm.redactable,
              );
            });
      },
    );
  }
}

class _SelectionCard extends StatelessWidget {
  const _SelectionCard(
      {super.key,
      required this.selection,
      required this.onTapAdd,
      required this.onTapCard,
      required this.fav,
      required this.onTapRemove,
      required this.wm,
      this.redactable = false});

  final Selection selection;
  final Function(Selection) onTapAdd;
  final Function(Selection) onTapRemove;
  final Function(Film) onTapCard;
  final bool fav;
  final bool redactable;
  final ISelectionScreenWidgetModel wm;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin:
              const EdgeInsets.only(top: 20, left: 40, right: 40, bottom: 40),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text(
                  selection.name,
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge
                      ?.copyWith(color: Colors.white),
                ),
              ),
              EntityStateNotifierBuilder(
                  listenableEntityState: wm.films,
                  builder: (context, state) {
                    return Expanded(
                      child: _FilmsGrid(
                        films: state ?? [],
                        onCardTap: onTapCard,
                        wm: wm,
                        redactable: wm.redactable,
                        selection: selection,
                      ),
                    );
                  }),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 30),
                    child: SizedBox(
                      height: 30,
                      child: FilledButton(
                        onPressed: () async => redactable
                            ? await wm.deleteSelection(selection)
                            : fav
                                ? onTapRemove(selection)
                                : onTapAdd(selection),
                        child: Center(
                          child: Text(redactable
                              ? "Удалить подборку"
                              : fav
                                  ? "Удалить подборку"
                                  : "Добавить подборку"),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        if (redactable)
          Align(
            alignment: Alignment.topRight,
            child: StreamBuilder<bool>(
                stream: wm.picLoading,
                builder: (context, snapshot) {
                  bool loading = snapshot.data ?? true;

                  return Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: SizedBox(
                      height: 30,
                      child: FilledButton(
                        onPressed: loading
                            ? null
                            : () async {
                          final bytesFromPicker = await ImagePickerWeb.getImageAsBytes();


                                if (bytesFromPicker != null) {
                                  final base64String = base64Encode(
                                      bytesFromPicker);
                                  await wm.uploadPicture(base64String);
                                }
                              },
                        child: loading
                            ? const CircularProgressIndicator()
                            : const Text("Обновить картинку"),
                      ),
                    ),
                  );

                  return FileUploadButton(
                    onTap: wm.uploadPicture,
                  );
                }),
          ),
      ],
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
    required this.selection,
  });

  final List<Film> films;
  final Function(Film)? onCardTap;
  final bool redactable;
  final Selection selection;
  final ISelectionScreenWidgetModel wm;

  @override
  Widget build(BuildContext context) {
    final localFunc = onCardTap;
    return GridView.builder(
      itemCount: redactable ? films.length + 1 : films.length,
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        childAspectRatio: 150 / 330,
        maxCrossAxisExtent: 250,
        mainAxisExtent: 330,
      ),
      itemBuilder: (context, index) {
        if (index == films.length && redactable) {
          return AddNewSelectionWidget.film(
            onTapNew: wm.onTapNew,
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
                    wm.removeFilm(selection, films[index]);
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

// _startFilePicker(BuildContext context) async {
//   InputElement uploadInput = FileUploadInputElement();
//   uploadInput.click();
//
//   uploadInput.onChange.listen((e) {
//     // read file content as dataURL
//     final files = uploadInput.files;
//     if (files?.length == 1) {
//       final file = files?[0];
//       FileReader reader =  FileReader();
//
//       reader.onLoadEnd.listen((e) {
//         setState(() {
//           uploadedImage = reader.result;
//         });
//       });
//
//       reader.onError.listen((fileEvent) {
//         setState(() {
//           option1Text = "Some Error occured while reading the file";
//         });
//       });
//
//       reader.readAsArrayBuffer(file);
//     }
//   });
// }
}

class FileUploadButton extends StatelessWidget {
  final Future<void> Function(String) onTap;

  const FileUploadButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return FilledButton(
        child: const Text('UPLOAD FILE'),
        onPressed: () async {
          var picked = await FilePicker.platform.pickFiles(
              type: FileType.custom, allowedExtensions: ['jpg', 'png']);

          if (picked != null) {
            final base64String =
                base64Encode(picked.files.first.bytes?.toList() ?? []);
            await onTap(base64String);
          }
        });
  }
}
