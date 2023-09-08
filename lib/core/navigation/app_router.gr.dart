// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    AuthScreenRoute.name: (routeData) {
      final args = routeData.argsAs<AuthScreenRouteArgs>(
          orElse: () => const AuthScreenRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: AuthScreenWidget(
          key: args.key,
          wmFactory: args.wmFactory,
        ),
      );
    },
    FilmCardScreenRoute.name: (routeData) {
      final args = routeData.argsAs<FilmCardScreenRouteArgs>(
          orElse: () => const FilmCardScreenRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: FilmCardScreenWidget(
          film: args.film,
          key: args.key,
          wmFactory: args.wmFactory,
        ),
      );
    },
    FilmsListScreenRoute.name: (routeData) {
      final args = routeData.argsAs<FilmsListScreenRouteArgs>(
          orElse: () => const FilmsListScreenRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: FilmsListScreenWidget(
          key: args.key,
          wmFactory: args.wmFactory,
        ),
      );
    },
    FilmsTabRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const FilmsTab(),
      );
    },
    HomeScreenRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomeScreenWidget(),
      );
    },
    MainTabRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MainTab(),
      );
    },
    ProfileScreenRoute.name: (routeData) {
      final args = routeData.argsAs<ProfileScreenRouteArgs>(
          orElse: () => const ProfileScreenRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ProfileScreenWidget(
          key: args.key,
          wmFactory: args.wmFactory,
        ),
      );
    },
    ProfileTabRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ProfileTab(),
      );
    },
    RatingTabRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const RatingTab(),
      );
    },
    SelectionsListScreenRoute.name: (routeData) {
      final args = routeData.argsAs<SelectionsListScreenRouteArgs>(
          orElse: () => const SelectionsListScreenRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: SelectionsListScreenWidget(
          key: args.key,
          wmFactory: args.wmFactory,
        ),
      );
    },
    SelectionsTabRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SelectionsTab(),
      );
    },
  };
}

/// generated route for
/// [AuthScreenWidget]
class AuthScreenRoute extends PageRouteInfo<AuthScreenRouteArgs> {
  AuthScreenRoute({
    Key? key,
    WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
            BuildContext)
        wmFactory = defaultAuthScreenWidgetModelFactory,
    List<PageRouteInfo>? children,
  }) : super(
          AuthScreenRoute.name,
          args: AuthScreenRouteArgs(
            key: key,
            wmFactory: wmFactory,
          ),
          initialChildren: children,
        );

  static const String name = 'AuthScreenRoute';

  static const PageInfo<AuthScreenRouteArgs> page =
      PageInfo<AuthScreenRouteArgs>(name);
}

class AuthScreenRouteArgs {
  const AuthScreenRouteArgs({
    this.key,
    this.wmFactory = defaultAuthScreenWidgetModelFactory,
  });

  final Key? key;

  final WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
      BuildContext) wmFactory;

  @override
  String toString() {
    return 'AuthScreenRouteArgs{key: $key, wmFactory: $wmFactory}';
  }
}

/// generated route for
/// [FilmCardScreenWidget]
class FilmCardScreenRoute extends PageRouteInfo<FilmCardScreenRouteArgs> {
  FilmCardScreenRoute({
    Film film = const Film(
        id: 0,
        title: "title",
        country: "country",
        director: "director",
        fees: 123,
        responsePictureDto: ResponsePicture(pictureType: "Png", data: ""),
        plot:
            "cockckckckckckckckckkcckckckkckckcockckckckckckckckckkcckckckkckckcockckckckckckckckckkcckckckkckckcockckckckckckckckckkcckckckkckckcockckckckckckckckckkcckckckkckckcockckckckckckckckckkcckckckkckckcockckckckckckckckckkcckckckkckckcockckckckckckckckckkcckckckkckckcockckckckckckckckckkcckckckkckckcockckckckckckckckckkcckckckkckckcockckckckckckckckckkcckckckkckckcockckckckckckckckckkcckckckkckckcockckckckckckckckckkcckckckkckckcockckckckckckckckckkcckckckkckckcockckckckckckckckckkcckckckkckckcockckckckckckckckckkcckckckkckckcockckckckckckckckckkcckckckkckckcockckckckckckckckckkcckckckkckckcockckckckckckckckckkcckckckkckckcockckckckckckckckckkcckckckkckckcockckckckckckckckckkcckckckkckckcockckckckckckckckckkcckckckkckck",
        releaseYear: 123),
    Key? key,
    WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
            BuildContext)
        wmFactory = defaultFilmCardScreenWidgetModelFactory,
    List<PageRouteInfo>? children,
  }) : super(
          FilmCardScreenRoute.name,
          args: FilmCardScreenRouteArgs(
            film: film,
            key: key,
            wmFactory: wmFactory,
          ),
          initialChildren: children,
        );

  static const String name = 'FilmCardScreenRoute';

  static const PageInfo<FilmCardScreenRouteArgs> page =
      PageInfo<FilmCardScreenRouteArgs>(name);
}

class FilmCardScreenRouteArgs {
  const FilmCardScreenRouteArgs({
    this.film = const Film(
        id: 0,
        title: "title",
        country: "country",
        director: "director",
        fees: 123,
        responsePictureDto: ResponsePicture(pictureType: "Png", data: ""),
        plot:
            "cockckckckckckckckckkcckckckkckckcockckckckckckckckckkcckckckkckckcockckckckckckckckckkcckckckkckckcockckckckckckckckckkcckckckkckckcockckckckckckckckckkcckckckkckckcockckckckckckckckckkcckckckkckckcockckckckckckckckckkcckckckkckckcockckckckckckckckckkcckckckkckckcockckckckckckckckckkcckckckkckckcockckckckckckckckckkcckckckkckckcockckckckckckckckckkcckckckkckckcockckckckckckckckckkcckckckkckckcockckckckckckckckckkcckckckkckckcockckckckckckckckckkcckckckkckckcockckckckckckckckckkcckckckkckckcockckckckckckckckckkcckckckkckckcockckckckckckckckckkcckckckkckckcockckckckckckckckckkcckckckkckckcockckckckckckckckckkcckckckkckckcockckckckckckckckckkcckckckkckckcockckckckckckckckckkcckckckkckckcockckckckckckckckckkcckckckkckck",
        releaseYear: 123),
    this.key,
    this.wmFactory = defaultFilmCardScreenWidgetModelFactory,
  });

  final Film film;

  final Key? key;

  final WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
      BuildContext) wmFactory;

  @override
  String toString() {
    return 'FilmCardScreenRouteArgs{film: $film, key: $key, wmFactory: $wmFactory}';
  }
}

/// generated route for
/// [FilmsListScreenWidget]
class FilmsListScreenRoute extends PageRouteInfo<FilmsListScreenRouteArgs> {
  FilmsListScreenRoute({
    Key? key,
    WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
            BuildContext)
        wmFactory = defaultFilmsListScreenWidgetModelFactory,
    List<PageRouteInfo>? children,
  }) : super(
          FilmsListScreenRoute.name,
          args: FilmsListScreenRouteArgs(
            key: key,
            wmFactory: wmFactory,
          ),
          initialChildren: children,
        );

  static const String name = 'FilmsListScreenRoute';

  static const PageInfo<FilmsListScreenRouteArgs> page =
      PageInfo<FilmsListScreenRouteArgs>(name);
}

class FilmsListScreenRouteArgs {
  const FilmsListScreenRouteArgs({
    this.key,
    this.wmFactory = defaultFilmsListScreenWidgetModelFactory,
  });

  final Key? key;

  final WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
      BuildContext) wmFactory;

  @override
  String toString() {
    return 'FilmsListScreenRouteArgs{key: $key, wmFactory: $wmFactory}';
  }
}

/// generated route for
/// [FilmsTab]
class FilmsTabRoute extends PageRouteInfo<void> {
  const FilmsTabRoute({List<PageRouteInfo>? children})
      : super(
          FilmsTabRoute.name,
          initialChildren: children,
        );

  static const String name = 'FilmsTabRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomeScreenWidget]
class HomeScreenRoute extends PageRouteInfo<void> {
  const HomeScreenRoute({List<PageRouteInfo>? children})
      : super(
          HomeScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeScreenRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MainTab]
class MainTabRoute extends PageRouteInfo<void> {
  const MainTabRoute({List<PageRouteInfo>? children})
      : super(
          MainTabRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainTabRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ProfileScreenWidget]
class ProfileScreenRoute extends PageRouteInfo<ProfileScreenRouteArgs> {
  ProfileScreenRoute({
    Key? key,
    WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
            BuildContext)
        wmFactory = defaultProfileScreenWidgetModelFactory,
    List<PageRouteInfo>? children,
  }) : super(
          ProfileScreenRoute.name,
          args: ProfileScreenRouteArgs(
            key: key,
            wmFactory: wmFactory,
          ),
          initialChildren: children,
        );

  static const String name = 'ProfileScreenRoute';

  static const PageInfo<ProfileScreenRouteArgs> page =
      PageInfo<ProfileScreenRouteArgs>(name);
}

class ProfileScreenRouteArgs {
  const ProfileScreenRouteArgs({
    this.key,
    this.wmFactory = defaultProfileScreenWidgetModelFactory,
  });

  final Key? key;

  final WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
      BuildContext) wmFactory;

  @override
  String toString() {
    return 'ProfileScreenRouteArgs{key: $key, wmFactory: $wmFactory}';
  }
}

/// generated route for
/// [ProfileTab]
class ProfileTabRoute extends PageRouteInfo<void> {
  const ProfileTabRoute({List<PageRouteInfo>? children})
      : super(
          ProfileTabRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileTabRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [RatingTab]
class RatingTabRoute extends PageRouteInfo<void> {
  const RatingTabRoute({List<PageRouteInfo>? children})
      : super(
          RatingTabRoute.name,
          initialChildren: children,
        );

  static const String name = 'RatingTabRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SelectionsListScreenWidget]
class SelectionsListScreenRoute
    extends PageRouteInfo<SelectionsListScreenRouteArgs> {
  SelectionsListScreenRoute({
    Key? key,
    WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
            BuildContext)
        wmFactory = defaultSelectionsListScreenWidgetModelFactory,
    List<PageRouteInfo>? children,
  }) : super(
          SelectionsListScreenRoute.name,
          args: SelectionsListScreenRouteArgs(
            key: key,
            wmFactory: wmFactory,
          ),
          initialChildren: children,
        );

  static const String name = 'SelectionsListScreenRoute';

  static const PageInfo<SelectionsListScreenRouteArgs> page =
      PageInfo<SelectionsListScreenRouteArgs>(name);
}

class SelectionsListScreenRouteArgs {
  const SelectionsListScreenRouteArgs({
    this.key,
    this.wmFactory = defaultSelectionsListScreenWidgetModelFactory,
  });

  final Key? key;

  final WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
      BuildContext) wmFactory;

  @override
  String toString() {
    return 'SelectionsListScreenRouteArgs{key: $key, wmFactory: $wmFactory}';
  }
}

/// generated route for
/// [SelectionsTab]
class SelectionsTabRoute extends PageRouteInfo<void> {
  const SelectionsTabRoute({List<PageRouteInfo>? children})
      : super(
          SelectionsTabRoute.name,
          initialChildren: children,
        );

  static const String name = 'SelectionsTabRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
