import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:movie_genie/assets/movie_genie_icons_icons.dart';
import 'package:movie_genie/core/domain/user_data.dart';
import 'package:movie_genie/core/navigation/app_router.dart';

@RoutePage()
class HomeScreenWidget extends StatefulWidget {
  const HomeScreenWidget({super.key});

  @override
  State<HomeScreenWidget> createState() => _HomeScreenWidgetState();
}

class _HomeScreenWidgetState extends State<HomeScreenWidget> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;
    return AutoTabsRouter(
      routes: const [
        MainTabRoute(),
        FilmsTabRoute(),
        SelectionsTabRoute(),
        RatingTabRoute(),
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
                const SizedBox(
                  width: 450,
                  height: 30,
                  child: ColoredBox(color: Colors.white),
                ),
              ],
            ),
            automaticallyImplyLeading: false,
            actions: [
              StreamBuilder<bool>(
                  stream: GetIt.instance.get<UserData>().isLoggedIn,
                  builder: (context, snapshot) {
                    bool auth = snapshot.data ?? false;
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
                      selectedIndex = index;
                      if (index != tabsRouter.activeIndex) {
                        tabsRouter.setActiveIndex(index);
                      }else{
                        tabsRouter.stackRouterOfIndex(index)?.popUntilRoot();
                      }
                    });
                  },
                  groupAlignment: -1,
                  destinations: const <NavigationRailDestination>[
                    NavigationRailDestination(
                      padding: EdgeInsets.only(top: 30),
                      icon: Icon(MovieGenieIcons.main),
                      label: Text('Главная'),
                    ),
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
                      icon: Icon(MovieGenieIcons.top),
                      label: Text('Рейтинги'),
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
      onPressed: () => context.router.root.push(AuthScreenRoute()),
      child: Text(
        auth ? 'Выйти' : 'Войти',
        style: Theme.of(context).textTheme.labelMedium,
      ),
    );
  }
}
