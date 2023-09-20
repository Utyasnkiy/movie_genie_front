import 'package:auto_route/annotations.dart';
import 'package:elementary/elementary.dart';
import 'package:elementary_helper/elementary_helper.dart';
import 'package:flutter/material.dart';
import 'package:movie_genie/core/data/model/selection/selection.dart';
import 'package:movie_genie/core/screens/films_list_screen/films_list_screen_widget.dart';
import 'god_forsaken_me_wm.dart';

@RoutePage()
class GodForsakenMeWidget extends ElementaryWidget<IGodForsakenMeWidgetModel> {
  const GodForsakenMeWidget({
    required this.myEyesHurt,
    Key? key,
    WidgetModelFactory wmFactory = defaultGodForsakenMeWidgetModelFactory,
  }) : super(wmFactory, key: key);

  final Selection myEyesHurt;

  @override
  Widget build(IGodForsakenMeWidgetModel wm) {
    final ids = myEyesHurt.films.map((e) => e.id).toList();
    final asdfklsdjfsdmlaclkdmacklsjfklsdnafkbwefdhjkasjfdkjasfbjksadcnfksdjfskadhfkksdjfldhasfldhjkljscnfksdjflhflasdkasasdkjwdkaueoqiwjeaoisdjaolisjwcoqijjdaskdl = wm
        .films.where((e) => !ids.contains(e.id)).toList();
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
            child: FilmsGrid(films: asdfklsdjfsdmlaclkdmacklsjfklsdnafkbwefdhjkasjfdkjasfbjksadcnfksdjfskadhfkksdjfldhasfldhjkljscnfksdjflhflasdkasasdkjwdkaueoqiwjeaoisdjaolisjwcoqijjdaskdl, onCardTap: wm.iDontFeelPainAnymore,
            ),
          ),
        ],
      ),
    );
  }
}
