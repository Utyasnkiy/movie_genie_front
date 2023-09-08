import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:movie_genie/core/data/model/film/film.dart';
import 'package:movie_genie/core/data/model/response_picture/response_picture.dart';
import 'package:movie_genie/core/screens/auth_screen/auth_screen_widget.dart';
import 'package:movie_genie/core/screens/auth_screen/auth_screen_wm.dart';

import '../screens/screens.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: "Widget,Route")
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: AuthScreenRoute.page),
        AutoRoute(
          path: '/',
          page: HomeScreenRoute.page,
          initial: true,
          children: [
            AutoRoute(
                path: 'main',
                page: MainTabRoute.page,

                children: [
                  AutoRoute(
                    page: FilmsListScreenRoute.page,
                  ),
                ]),
            AutoRoute(path: 'films',
                initial: true,
                page: FilmsTabRoute.page, children: [
              AutoRoute(
                initial: true,
                page: FilmsListScreenRoute.page,
              ),
              AutoRoute(
                page: FilmCardScreenRoute.page,
              ),
            ]),
            AutoRoute(
                path: 'selections',
                page: SelectionsTabRoute.page,
                children: [
                  AutoRoute(
                    initial: true,
                    page: SelectionsListScreenRoute.page,
                  ),
                ]),
            AutoRoute(path: 'rating', page: RatingTabRoute.page, children: [
              AutoRoute(
                page: FilmCardScreenRoute.page,
              ),
            ]),
            AutoRoute(path: 'profile', page: ProfileTabRoute.page, children: [
              AutoRoute(
                initial: true,
                page: ProfileScreenRoute.page,
              ),
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
