import 'package:dio/dio.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:movie_genie/core/data/repo/auth_repo/auth_repo.dart';
import 'package:movie_genie/core/data/repo/film_repo/film_repo.dart';
import 'package:movie_genie/core/data/repo/selection_repo/selection_repo.dart';
import 'package:movie_genie/core/default_error_handler/default_error_handler.dart';
import 'package:movie_genie/core/domain/auth.dart';
import 'package:movie_genie/core/domain/favorites.dart';
import 'package:movie_genie/core/domain/selection_manager.dart';
import 'package:movie_genie/core/domain/user_data.dart';
import 'package:movie_genie/core/domain/film_manager.dart';
import 'package:provider/provider.dart';

class AppDependency extends StatelessWidget {
  const AppDependency({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final container = GetIt.instance;

    return MultiProvider(
      providers: [
        Provider<ErrorHandler>(
          create: (_) => DefaultErrorHandler(),
        ),
        Provider<SelectionManager>(
          create: (_) => SelectionManager(
            container.get<UserData>(),
            container.get<SelectionRepo>(),
          ),
        ),

        Provider<Auth>(
          create: (_) => Auth(
            container.get<UserData>(),
            container.get<AuthRepo>(),
            container.get(),
            container.get(),
          ),
        ),
      ],
      child: child,
    );
  }
}
