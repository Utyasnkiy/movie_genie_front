import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:rxdart/rxdart.dart';


class UserData{
  String? accessToken;
  String? refreshToken;
  int? id;

  final BehaviorSubject<bool> isLoggedIn = BehaviorSubject.seeded(false);
  final FlutterSecureStorage storage;

  UserData(this.storage);
  
  Future<void> init() async{
    accessToken = await storage.read(key: "access");
    refreshToken = await storage.read(key: "refresh");
    final stringId = await storage.read(key: "id");

    if(stringId != null){
      id = int.parse(stringId);
      isLoggedIn.add(true);
    } else{
      isLoggedIn.add(false);
    }
  }

  void clearTokens(){
    accessToken = null;
    refreshToken = null;
    id = null;
    isLoggedIn.add(false);

    saveTokens();
  }

  void saveTokens(){

    isLoggedIn.add(true);
    storage.write(key: "access", value: accessToken);
    storage.write(key: "refresh", value: refreshToken);
    storage.write(key: "id", value: id.toString());
  }
}