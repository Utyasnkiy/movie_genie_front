import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:rxdart/rxdart.dart';


class UserData {
  String? accessToken;
  String? refreshToken;
  int? id;

  final BehaviorSubject<bool> isLoggedIn = BehaviorSubject.seeded(false);
  final FlutterSecureStorage storage;
  String? role = "none";
  final Storage _localStorage = window.localStorage;

  UserData(this.storage);

  String getCachedPicture(int id){
    try {
      final pic = _localStorage[id.toString()];
      return pic ?? "loading";
    } catch(e){
      return "loading";
    }
  }

  void cachePicture(String? base64, int id){
    try {
      if (base64 == null) {
        debugPrint("pic is null");
        return;
      }
      _localStorage[id.toString()] = base64;
    } catch(e){
      return;
    }
  }

  Future<void> init() async {
    accessToken = _localStorage["access"];
    refreshToken = _localStorage["refresh"];
    final stringId = _localStorage["id"];
    debugPrint("acc : $accessToken");

    debugPrint("ref : $refreshToken");
    debugPrint("id : $stringId");
    if (stringId != null) {
      if (stringId == "-1") {
        isLoggedIn.add(false);
        return;
      }
      id = int.parse(stringId);
      isLoggedIn.add(true);
    } else {
      isLoggedIn.add(false);
    }
  }

  void clearTokens() {
    accessToken = null;
    refreshToken = null;
    role = null;
    id = null;
    isLoggedIn.add(false);


    _localStorage["access"] = accessToken ?? "";
    _localStorage["refresh"] = refreshToken ?? "";
    _localStorage["role"] = role ?? "";
    _localStorage["id"] = (id ?? -1).toString();
  }

  void saveTokens() {
    debugPrint(role);

    isLoggedIn.add(true);
    _localStorage["role"] = role ?? "";
    _localStorage["access"] = accessToken ?? "";
    _localStorage["refresh"] = refreshToken ?? "";
    _localStorage["id"] = (id ?? -1).toString();
  }
}