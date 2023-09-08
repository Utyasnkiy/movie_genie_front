import 'package:flutter/material.dart';
import 'package:movie_genie/assets/app_color.dart';
import 'package:movie_genie/assets/app_typography.dart';
import 'package:movie_genie/core/navigation/app_router.dart';

class App extends StatelessWidget {
  final AppRouter _appRouter = AppRouter();

  App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _appRouter.config(),
      theme: ThemeData(
        scrollbarTheme: ScrollbarThemeData(
            mainAxisMargin: 5,
            showTrackOnHover: true,
            thumbVisibility: MaterialStateProperty.all(true),
            trackColor: MaterialStateProperty.all(Colors.white10),
            thumbColor: MaterialStateProperty.all(Colors.white60)),
        highlightColor: Colors.transparent,
        splashFactory: NoSplash.splashFactory,
        useMaterial3: true,
        textTheme: TextTheme(
          bodyMedium: AppTypography.bodyMedium,
          labelMedium: AppTypography.barTitle,
          bodySmall: AppTypography.helperText,
          titleMedium: AppTypography.titleMedium,
          titleSmall: AppTypography.titleSmall,
          titleLarge: AppTypography.titleLarge,
          labelLarge: AppTypography.labelLarge,
          headlineLarge: AppTypography.superBig,
          displayMedium: AppTypography.popUpStyle,
        ),
        colorScheme: ColorScheme.fromSeed(
          seedColor: AppColor.white,
          background: AppColor.background,
          primary: AppColor.primary,
          secondary: AppColor.secondary,
          secondaryContainer: AppColor.sideBar,
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: AppColor.appBar,
          titleTextStyle: AppTypography.barTitle,
        ),
        iconTheme: const IconThemeData(color: Colors.white, size: 15),
        filledButtonTheme: FilledButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(AppColor.background),
            elevation: MaterialStateProperty.all(0),
            textStyle: MaterialStateProperty.all(AppTypography.titleSmall),
            foregroundColor: MaterialStateProperty.all(Colors.black),
            shape: MaterialStateProperty.all(
              const RoundedRectangleBorder(
                side: BorderSide.none,
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
            ),
          ),
        ),
        scaffoldBackgroundColor: AppColor.primary,
      ),
    );
  }
}
