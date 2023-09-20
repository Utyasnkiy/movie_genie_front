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
    CreateSearchScreenRoute.name: (routeData) {
      final args = routeData.argsAs<CreateSearchScreenRouteArgs>(
          orElse: () => const CreateSearchScreenRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: CreateSearchScreenWidget(
          key: args.key,
          wmFactory: args.wmFactory,
        ),
      );
    },
    FilmCardScreenRoute.name: (routeData) {
      final args = routeData.argsAs<FilmCardScreenRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: FilmCardScreenWidget(
          id: args.id,
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
    GodForsakenMeRoute.name: (routeData) {
      final args = routeData.argsAs<GodForsakenMeRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: GodForsakenMeWidget(
          myEyesHurt: args.myEyesHurt,
          key: args.key,
          wmFactory: args.wmFactory,
        ),
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
    RegisterScreenRoute.name: (routeData) {
      final args = routeData.argsAs<RegisterScreenRouteArgs>(
          orElse: () => const RegisterScreenRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: RegisterScreenWidget(
          key: args.key,
          wmFactory: args.wmFactory,
        ),
      );
    },
    SelectionScreenRoute.name: (routeData) {
      final args = routeData.argsAs<SelectionScreenRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: SelectionScreenWidget(
          selection: args.selection,
          key: args.key,
          wmFactory: args.wmFactory,
        ),
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
/// [CreateSearchScreenWidget]
class CreateSearchScreenRoute
    extends PageRouteInfo<CreateSearchScreenRouteArgs> {
  CreateSearchScreenRoute({
    Key? key,
    WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
            BuildContext)
        wmFactory = defaultCreateSearchScreenWidgetModelFactory,
    List<PageRouteInfo>? children,
  }) : super(
          CreateSearchScreenRoute.name,
          args: CreateSearchScreenRouteArgs(
            key: key,
            wmFactory: wmFactory,
          ),
          initialChildren: children,
        );

  static const String name = 'CreateSearchScreenRoute';

  static const PageInfo<CreateSearchScreenRouteArgs> page =
      PageInfo<CreateSearchScreenRouteArgs>(name);
}

class CreateSearchScreenRouteArgs {
  const CreateSearchScreenRouteArgs({
    this.key,
    this.wmFactory = defaultCreateSearchScreenWidgetModelFactory,
  });

  final Key? key;

  final WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
      BuildContext) wmFactory;

  @override
  String toString() {
    return 'CreateSearchScreenRouteArgs{key: $key, wmFactory: $wmFactory}';
  }
}

/// generated route for
/// [FilmCardScreenWidget]
class FilmCardScreenRoute extends PageRouteInfo<FilmCardScreenRouteArgs> {
  FilmCardScreenRoute({
    required int id,
    required Film film,
    Key? key,
    WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
            BuildContext)
        wmFactory = defaultFilmCardScreenWidgetModelFactory,
    List<PageRouteInfo>? children,
  }) : super(
          FilmCardScreenRoute.name,
          args: FilmCardScreenRouteArgs(
            id: id,
            film: film,
            key: key,
            wmFactory: wmFactory,
          ),
          rawPathParams: {'id': id},
          initialChildren: children,
        );

  static const String name = 'FilmCardScreenRoute';

  static const PageInfo<FilmCardScreenRouteArgs> page =
      PageInfo<FilmCardScreenRouteArgs>(name);
}

class FilmCardScreenRouteArgs {
  const FilmCardScreenRouteArgs({
    required this.id,
    required this.film,
    this.key,
    this.wmFactory = defaultFilmCardScreenWidgetModelFactory,
  });

  final int id;

  final Film film;

  final Key? key;

  final WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
      BuildContext) wmFactory;

  @override
  String toString() {
    return 'FilmCardScreenRouteArgs{id: $id, film: $film, key: $key, wmFactory: $wmFactory}';
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
/// [GodForsakenMeWidget]
class GodForsakenMeRoute extends PageRouteInfo<GodForsakenMeRouteArgs> {
  GodForsakenMeRoute({
    required Selection myEyesHurt,
    Key? key,
    WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
            BuildContext)
        wmFactory = defaultGodForsakenMeWidgetModelFactory,
    List<PageRouteInfo>? children,
  }) : super(
          GodForsakenMeRoute.name,
          args: GodForsakenMeRouteArgs(
            myEyesHurt: myEyesHurt,
            key: key,
            wmFactory: wmFactory,
          ),
          initialChildren: children,
        );

  static const String name = 'GodForsakenMeRoute';

  static const PageInfo<GodForsakenMeRouteArgs> page =
      PageInfo<GodForsakenMeRouteArgs>(name);
}

class GodForsakenMeRouteArgs {
  const GodForsakenMeRouteArgs({
    required this.myEyesHurt,
    this.key,
    this.wmFactory = defaultGodForsakenMeWidgetModelFactory,
  });

  final Selection myEyesHurt;

  final Key? key;

  final WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
      BuildContext) wmFactory;

  @override
  String toString() {
    return 'GodForsakenMeRouteArgs{myEyesHurt: $myEyesHurt, key: $key, wmFactory: $wmFactory}';
  }
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
/// [RegisterScreenWidget]
class RegisterScreenRoute extends PageRouteInfo<RegisterScreenRouteArgs> {
  RegisterScreenRoute({
    Key? key,
    WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
            BuildContext)
        wmFactory = defaultRegisterScreenWidgetModelFactory,
    List<PageRouteInfo>? children,
  }) : super(
          RegisterScreenRoute.name,
          args: RegisterScreenRouteArgs(
            key: key,
            wmFactory: wmFactory,
          ),
          initialChildren: children,
        );

  static const String name = 'RegisterScreenRoute';

  static const PageInfo<RegisterScreenRouteArgs> page =
      PageInfo<RegisterScreenRouteArgs>(name);
}

class RegisterScreenRouteArgs {
  const RegisterScreenRouteArgs({
    this.key,
    this.wmFactory = defaultRegisterScreenWidgetModelFactory,
  });

  final Key? key;

  final WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
      BuildContext) wmFactory;

  @override
  String toString() {
    return 'RegisterScreenRouteArgs{key: $key, wmFactory: $wmFactory}';
  }
}

/// generated route for
/// [SelectionScreenWidget]
class SelectionScreenRoute extends PageRouteInfo<SelectionScreenRouteArgs> {
  SelectionScreenRoute({
    required Selection selection,
    Key? key,
    WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
            BuildContext)
        wmFactory = defaultSelectionScreenWidgetModelFactory,
    List<PageRouteInfo>? children,
  }) : super(
          SelectionScreenRoute.name,
          args: SelectionScreenRouteArgs(
            selection: selection,
            key: key,
            wmFactory: wmFactory,
          ),
          initialChildren: children,
        );

  static const String name = 'SelectionScreenRoute';

  static const PageInfo<SelectionScreenRouteArgs> page =
      PageInfo<SelectionScreenRouteArgs>(name);
}

class SelectionScreenRouteArgs {
  const SelectionScreenRouteArgs({
    required this.selection,
    this.key,
    this.wmFactory = defaultSelectionScreenWidgetModelFactory,
  });

  final Selection selection;

  final Key? key;

  final WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
      BuildContext) wmFactory;

  @override
  String toString() {
    return 'SelectionScreenRouteArgs{selection: $selection, key: $key, wmFactory: $wmFactory}';
  }
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
