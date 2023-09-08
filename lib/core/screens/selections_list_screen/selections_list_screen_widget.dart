import 'package:auto_route/annotations.dart';
import 'package:elementary/elementary.dart';
import 'package:elementary_helper/elementary_helper.dart';
import 'package:flutter/material.dart';
import 'package:movie_genie/core/data/model/selection/selection.dart';
import 'package:movie_genie/core/screens/components/mini_film_card_screen_widget.dart';

import 'selections_list_screen_wm.dart';

@RoutePage()
class SelectionsListScreenWidget
    extends ElementaryWidget<ISelectionsListScreenWidgetModel> {
  const SelectionsListScreenWidget({
    Key? key,
    WidgetModelFactory wmFactory =
        defaultSelectionsListScreenWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(ISelectionsListScreenWidgetModel wm) {
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
              child: Text("Подборки"),
            ),
          ),
          Expanded(
            child: EntityStateNotifierBuilder(
              listenableEntityState: wm.selectionManager.selectionsState,
              loadingBuilder: (context, selections) {
                final selectionsLocal = selections ?? [];
                if (selectionsLocal.isEmpty) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
                return _SelectionsGrid(selections: selectionsLocal, wm: wm);
              },
              builder: (context, films) {
                return _SelectionsGrid(selections: films ?? [], wm: wm);
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _SelectionsGrid extends StatelessWidget {
  const _SelectionsGrid(
      {super.key, required this.selections, required this.wm});

  final List<Selection> selections;
  final ISelectionsListScreenWidgetModel wm;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: selections.length,
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          crossAxisSpacing: 30,
          childAspectRatio: 280 / 170,
          maxCrossAxisExtent: 460,
          mainAxisExtent: 250,
        ),
        itemBuilder: (context, index) {
          return MiniCard.selection(selection: selections[index]);
        });
  }
}
