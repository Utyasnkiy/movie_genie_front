import 'package:dio/dio.dart';
import 'package:movie_genie/core/data/model/film/film.dart';
import 'package:movie_genie/core/data/model/main_page_response/main_page_response.dart';
import 'package:movie_genie/core/data/model/response_picture/response_picture.dart';
import 'package:movie_genie/core/data/request/delete_film/delete_film.dart';
import 'package:movie_genie/core/data/request/update_film_cover/update_film_cover.dart';
import 'package:retrofit/http.dart';
part 'film_repo.g.dart';
@RestApi()
abstract class FilmRepo{
  factory FilmRepo(Dio dio, {String baseUrl}) = _FilmRepo;

  @POST("api/film/delete/{id}")
  Future<void> deleteFilm(@Path("id") int id);

  @POST("api/film/save")
  Future<void> saveFilm(@Body() Film film);
  
  @POST("api/film/cover-update")
  Future<void> updateCover(@Body() UpdateFilmCover updateFilmCover);

  @GET("api/film/{id}")
  Future<Film> get(@Path("id") int id);

  @GET("api/")
  Future<MainPageResponse> getMain();

  @GET("api/film/{id}/cover")
  Future<ResponsePicture> getFilmCover(@Path("id") int id);

  @GET("api/film/search/{search}")
  Future<List<Film>> search(@Path("search") String search);

  @GET("api/user/will-watch")
  Future<List<Film>> getWatchLater();

  @GET("api/film/get/films")
  Future<List<Film>> getAll();

  @GET("/api/film/{id}/fav-sel")
  Future<void> addToWatchLater(@Path("id") int id);

  @GET("path")
  Future<void> removeFromWatchLater(@Path("id") int id);
}