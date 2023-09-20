import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:movie_genie/core/data/model/selection/selection.dart';
import 'package:movie_genie/core/domain/selection_manager.dart';
import 'package:movie_genie/core/navigation/app_router.dart';
import 'package:movie_genie/utils/theme_provider.dart';
import 'package:provider/provider.dart';
import 'selections_list_screen_model.dart';
import 'selections_list_screen_widget.dart';

abstract class ISelectionsListScreenWidgetModel implements IWidgetModel, IThemeProvider {
  SelectionManager get selectionManager;

  void onSelectionTap(Selection selection);
}

SelectionsListScreenWidgetModel defaultSelectionsListScreenWidgetModelFactory(BuildContext context) {
  return SelectionsListScreenWidgetModel(
    SelectionsListScreenModel(
      context.read(),
    ),
    context.read<SelectionManager>(),
  );
}

// TODO: cover with documentation
/// Default widget model for SelectionsListScreenWidget
class SelectionsListScreenWidgetModel
    extends WidgetModel<SelectionsListScreenWidget, SelectionsListScreenModel>
    with ThemeProvider
    implements ISelectionsListScreenWidgetModel {

  SelectionsListScreenWidgetModel(SelectionsListScreenModel model, this.selectionManager) : super(model);

  @override
  void initWidgetModel() {
    super.initWidgetModel();
    selectionManager.update();
  }

  @override
  final SelectionManager selectionManager;

  @override
  void onSelectionTap(Selection selection) {
    context.router.navigate(SelectionScreenRoute(selection: selection));
  }
}
