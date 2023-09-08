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
  BehaviorSubject<bool> get isLoggedIn => userDataRepo.isLoggedIn;

  Auth(this.userDataRepo, this.authRepo);

  int? get id => userDataRepo.id;

  Future<bool> register(UserRegistration userRegistration) async{
    try{
      final userData = await authRepo.register(userRegistration);

      userDataRepo.accessToken = userData.accessToken;
      userDataRepo.accessToken = userData.refreshToken;
      userDataRepo.id = userData.id;
      userDataRepo.saveTokens();
      isLoggedIn.add(true);
      return true;
    } on DioError catch(e){
      if(e.response?.statusCode == 451){
        return false;
      }
    }
    catch(e, stacktrace){
      debugPrint("error auth $e \n$stacktrace");
      return false;
    }
    debugPrint("code shouldn't be there");
    return false;
  }

  Future<bool> login(UserLogin userLogin) async{
    try{
      final userData = await authRepo.login(userLogin);

      userDataRepo.accessToken = userData.accessToken;
      userDataRepo.accessToken = userData.refreshToken;
      userDataRepo.id = userData.id;
      userDataRepo.saveTokens();
      isLoggedIn.add(true);
      return true;
    } on DioError catch(e){
      if(e.response?.statusCode == 451){
        return false;
      }
    }
    catch(e, stacktrace){
      debugPrint("error auth $e \n$stacktrace");
      return false;
    }
    debugPrint("code shouldn't be there");
    return false;
  }

  void unAuth(){
    isLoggedIn.add(false);
    userDataRepo.clearTokens();
  }
}