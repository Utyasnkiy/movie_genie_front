import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:movie_genie/core/data/interceptor/jwt_interceptor.dart';
import 'package:movie_genie/core/data/repo/auth_repo/auth_repo.dart';
import 'package:movie_genie/core/data/repo/film_repo/film_repo.dart';
import 'package:movie_genie/core/data/repo/selection_repo/selection_repo.dart';
import 'package:movie_genie/core/domain/favorites.dart';
import 'package:movie_genie/core/domain/film_manager.dart';
import 'package:movie_genie/core/domain/user_data.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

void initContainer() {
  final container = GetIt.instance;
  Dio dio = Dio();
  dio.options
    ..baseUrl = "https://backend-deeeesp.cloud.okteto.net/"
    ..connectTimeout = const Duration(minutes: 10)
    ..contentType = Headers.jsonContentType;


  dio.interceptors.add(
    PrettyDioLogger(
      request: true,
      requestBody: true,
      requestHeader: true,
      responseHeader: true,
      responseBody: false,
    ),
  );

  final userData = UserData(const FlutterSecureStorage())
    ..init();
  container.registerSingleton(userData);
  dio.interceptors.add(TokenInterceptor(dio, userData));


  container.registerSingleton<Dio>(dio);
  container.registerSingleton(FilmRepo(dio));
  container.registerSingleton(FilmManager(container.get<FilmRepo>(), userData));
  container.registerSingleton(SelectionRepo(dio));
  container.registerSingleton(
      Favorites(container.get<SelectionRepo>(), userData));

  container.registerSingleton(AuthRepo(container.get<Dio>()));
}
