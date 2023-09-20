import 'package:movie_genie/core/data/repo/selection_repo/selection_repo.dart';
import 'package:movie_genie/core/domain/favorites.dart';
import 'package:movie_genie/core/domain/film_manager.dart';
import 'package:movie_genie/core/domain/user_data.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:movie_genie/core/data/model/user_login/user_login.dart';
import 'package:movie_genie/core/data/repo/auth_repo/auth_repo.dart';
import 'package:movie_genie/core/data/request/user_register/user_register.dart';
import 'package:rxdart/rxdart.dart';

class Auth{
  final UserData userDataRepo;
  final AuthRepo authRepo;
  final FilmManager filmManager;
  final Favorites favoritesManager;
  BehaviorSubject<bool> get isLoggedIn => userDataRepo.isLoggedIn;

  Auth(this.userDataRepo, this.authRepo, this.filmManager, this.favoritesManager);

  int? get id => userDataRepo.id;

  Future<String?> register(UserRegistration userRegistration) async{
    try{
      final userData = await authRepo.register(userRegistration);

      userDataRepo.accessToken = userData.accessToken;
      userDataRepo.refreshToken = userData.refreshToken;
      userDataRepo.id = userData.id;
      userDataRepo.saveTokens();
      userDataRepo.role = await authRepo.getRole(userDataRepo.id ?? -1);
      filmManager.updateWatchLater();
      favoritesManager.update();
      isLoggedIn.add(true);
      return null;
    } on DioException catch(e){
      return e.response?.toString();
    }
    catch(e, stacktrace){
      debugPrint("error auth $e \n$stacktrace");
      return "error";
    }
  }

  Future<bool> login(UserLogin userLogin) async{
    try{
      final userData = await authRepo.login(userLogin);

      userDataRepo.accessToken = userData.accessToken;
      userDataRepo.refreshToken = userData.refreshToken;
      userDataRepo.id = userData.id;
      userDataRepo.role = await authRepo.getRole(userDataRepo.id ?? -1);
      userDataRepo.saveTokens();
      isLoggedIn.add(true);
      favoritesManager.update();
      filmManager.updateWatchLater();
      return true;
    } on DioException catch(e){
      if(e.response?.statusCode == 451){
        return false;
      }
      return false;
    }
    catch(e, stacktrace){
      debugPrint("error auth $e \n$stacktrace");
      return false;
    }
  }

  void unAuth(){
    favoritesManager.unAuth();
    filmManager.unAuth();
    isLoggedIn.add(false);
    userDataRepo.clearTokens();
  }
}