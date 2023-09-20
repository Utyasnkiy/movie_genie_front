import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:movie_genie/core/data/model/film/film.dart';
import 'package:movie_genie/core/data/model/selection/selection.dart';
import 'package:movie_genie/core/screens/auth_screen/auth_screen_widget.dart';
import 'package:movie_genie/core/screens/auth_screen/auth_screen_wm.dart';
import 'package:movie_genie/core/screens/create_search_screen/create_search_screen_widget.dart';
import 'package:movie_genie/core/screens/create_search_screen/create_search_screen_wm.dart';
import 'package:movie_genie/core/screens/kill_me_please/god_forsaken_me_widget.dart';
import 'package:movie_genie/core/screens/kill_me_please/god_forsaken_me_wm.dart';
import 'package:movie_genie/core/screens/register_screen/register_screen_widget.dart';
import 'package:movie_genie/core/screens/register_screen/register_screen_wm.dart';
import 'package:movie_genie/core/screens/selection_screen/selection_screen_widget.dart';
import 'package:movie_genie/core/screens/selection_screen/selection_screen_wm.dart';

import '../screens/screens.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: "Widget,Route")
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: RegisterScreenRoute.page),
        AutoRoute(page: AuthScreenRoute.page),
        AutoRoute(
          path: '/',
          page: HomeScreenRoute.page,
          initial: true,
          children: [
            AutoRoute(
                path: 'films',
                initial: true,
                page: FilmsTabRoute.page,
                children: [
                  AutoRoute(
                    initial: true,
                    page: FilmsListScreenRoute.page,
                  ),
                  AutoRoute(
                    path: "film/:id",
                    usesPathAsKey: true,
                    page: FilmCardScreenRoute.page,
                  ),
                ]),
            AutoRoute(
                path: 'selections',
                page: SelectionsTabRoute.page,
                children: [
                  AutoRoute(page: GodForsakenMeRoute.page),
                  AutoRoute(
                    initial: true,
                    page: SelectionsListScreenRoute.page,
                  ),
                  AutoRoute(
                      path: "selection",
                      usesPathAsKey: true,
                      page: SelectionScreenRoute.page)
                ]),
            AutoRoute(path: 'profile', page: ProfileTabRoute.page, children: [
              AutoRoute(
                initial: true,
                page: ProfileScreenRoute.page,
              ),
              AutoRoute(page: CreateSearchScreenRoute.page),
              AutoRoute(page: GodForsakenMeRoute.page),
            ]),
          ],
        ),
      ];
}

@RoutePage(name: "MainTabRoute")
class MainTab extends AutoRouter {
  const MainTab({super.key});
}

@RoutePage(name: "FilmsTabRoute")
class FilmsTab extends AutoRouter {
  const FilmsTab({super.key});
}

@RoutePage(name: "SelectionsTabRoute")
class SelectionsTab extends AutoRouter {
  const SelectionsTab({super.key});
}

@RoutePage(name: "RatingTabRoute")
class RatingTab extends AutoRouter {
  const RatingTab({super.key});
}

@RoutePage(name: "ProfileTabRoute")
class ProfileTab extends AutoRouter {
  const ProfileTab({super.key});
}
