import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'create_movie_screen_wm.dart';

// TODO: cover with documentation
/// Main widget for CreateMovieScreen module
class CreateMovieScreenWidget extends ElementaryWidget<ICreateMovieScreenWidgetModel> {
  const CreateMovieScreenWidget({
    Key? key,
    WidgetModelFactory wmFactory = defaultCreateMovieScreenWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(ICreateMovieScreenWidgetModel wm) {
    return Container();
  }
}
