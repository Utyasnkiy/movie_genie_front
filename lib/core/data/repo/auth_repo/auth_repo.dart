import 'package:dio/dio.dart';
import 'package:movie_genie/core/data/model/jwt_tokens/jwt_tokens.dart';
import 'package:movie_genie/core/data/model/user_login/user_login.dart';
import 'package:movie_genie/core/data/request/user_register/user_register.dart';
import 'package:retrofit/http.dart';

part 'auth_repo.g.dart';

@RestApi()
abstract class AuthRepo{
  factory AuthRepo(Dio dio, {String baseUrl}) = _AuthRepo;

  @POST("api/auth/register")
  Future<JwtJokens> register(@Body() UserRegistration userRegistration);
  
  @POST("/api/auth/login")
  Future<JwtJokens> login(@Body() UserLogin userLogin);

  @POST("/api/auth/refresh")
  Future<JwtJokens> refresh(@Body() String refreshToken);

  @GET("/api/user/{user_id}")
  Future<String> getRole(@Path("user_id") int id);
}