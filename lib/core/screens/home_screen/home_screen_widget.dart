import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:movie_genie/assets/movie_genie_icons_icons.dart';
import 'package:movie_genie/core/domain/auth.dart';
import 'package:movie_genie/core/domain/film_manager.dart';
import 'package:movie_genie/core/domain/selection_manager.dart';
import 'package:movie_genie/core/domain/user_data.dart';
import 'package:movie_genie/core/navigation/app_router.dart';
import 'package:movie_genie/core/screens/components/search_widget.dart';
import 'package:provider/provider.dart';

@RoutePage()
class HomeScreenWidget extends StatefulWidget {
  const HomeScreenWidget({super.key});

  @override
  State<HomeScreenWidget> createState() => _HomeScreenWidgetState();
}

class _HomeScreenWidgetState extends State<HomeScreenWidget> {
  int selectedIndex = 0;
  final TextEditingController search = TextEditingController();

  @override
  void initState() {
    super.initState();
  }
  @override
  void dispose() {
    search.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;
    return AutoTabsRouter(
      routes: const [
        FilmsTabRoute(),
        SelectionsTabRoute(),
        ProfileTabRoute(),
      ],
      lazyLoad: false,
      transitionBuilder: (context, child, _) {
        return child;
      },
      builder: (context, child) {
        final tabsRouter = AutoTabsRouter.of(context);

        return Scaffold(
          backgroundColor: Theme.of(context).colorScheme.primary,
          appBar: AppBar(
            toolbarHeight: 50,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Image.asset(
                    "assets/logo.png",
                    height: 45,
                  ),
                ),
                GestureDetector(

                  child: CustomSearchWidget(controller: search, onSubmitted: (string){
                    GetIt.instance.get<FilmManager>().search(search.text);

                    context.router.navigate(FilmsTabRoute(
                      children: [
                        FilmsListScreenRoute()
                      ]
                    ));

                  }),
                )
              ],
            ),
            automaticallyImplyLeading: false,
            actions: [
              StreamBuilder<bool>(
                  stream: GetIt.instance.get<UserData>().isLoggedIn,
                  builder: (context, snapshot) {
                    bool auth = snapshot.data ?? false;
                    debugPrint(auth.toString());

                    return _AuthButton(auth: auth);
                  }),
            ],
          ),
          body: Row(
            children: [
              DefaultTextStyle.merge(
                style: textTheme.labelMedium,
                child: NavigationRail(

                  backgroundColor: colorScheme.secondary,
                  extended: true,
                  labelType: NavigationRailLabelType.none,
                  selectedLabelTextStyle: textTheme.labelMedium,
                  unselectedLabelTextStyle: textTheme.labelMedium,
                  selectedIconTheme: Theme.of(context).iconTheme,
                  unselectedIconTheme: Theme.of(context).iconTheme,
                  minWidth: 32,
                  onDestinationSelected: (index) {
                    setState(() {
                      search.clear();
                      selectedIndex = index;
                      if (index != tabsRouter.activeIndex) {
                        if (index == 2 && GetIt.instance.get<UserData>().isLoggedIn.valueOrNull != true) {
                          ScaffoldMessenger.of(context)
                              .showSnackBar(const SnackBar(content: Text("Авторизуйтесь, чтобы войти в личный кабинет")))
                              .closed
                              .then((value) => ScaffoldMessenger.of(context).clearSnackBars());
                        } else {
                          tabsRouter.setActiveIndex(index);
                        }
                      } else {
                        if(index == 0){
                          GetIt.instance.get<FilmManager>().updateFilms();

                        }
                        if(index == 1){
                          context.read<SelectionManager>().update();
                        }
                        tabsRouter.stackRouterOfIndex(index)?.popUntilRoot();
                      }
                    });
                  },
                  groupAlignment: -1,
                  destinations: const <NavigationRailDestination>[
                    NavigationRailDestination(
                      padding: EdgeInsets.only(top: 30),
                      icon: Icon(MovieGenieIcons.films),
                      label: Text('Фильмы'),
                    ),
                    NavigationRailDestination(
                      padding: EdgeInsets.only(top: 30),
                      icon: Icon(MovieGenieIcons.selections),
                      label: Text('Подборки'),
                    ),
                    NavigationRailDestination(
                      padding: EdgeInsets.only(top: 30),
                      icon: Icon(MovieGenieIcons.profile),
                      label: Text('Личный кабинет'),
                    ),
                  ],
                  selectedIndex: selectedIndex,
                ),
              ),
              Expanded(child: child),
            ],
          ),
        );
      },
    );
  }
}

class _AuthButton extends StatelessWidget {
  const _AuthButton({super.key, required this.auth});

  final bool auth;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => auth? context.read<Auth>().unAuth() : context.router.root.push(AuthScreenRoute()),
      child: Text(
        auth ? 'Выйти' : 'Войти',
        style: Theme.of(context).textTheme.labelMedium,
      ),
    );
  }
}
