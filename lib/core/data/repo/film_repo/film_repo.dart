import 'package:dio/dio.dart';
import 'package:movie_genie/core/data/model/film/film.dart';
import 'package:movie_genie/core/data/model/main_page_response/main_page_response.dart';
import 'package:movie_genie/core/data/model/response_picture/response_picture.dart';
import 'package:movie_genie/core/data/model/search_dto/search_dto.dart';
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


  @GET("api/film/{id}/cover")
  Future<ResponsePicture> getFilmCover(@Path("id") int id);

  @POST("api/film/search")
  Future<SearchDto> search(@Body() String search);

  @GET("api/user/will-watch")
  Future<List<Film>> getWatchLater();

  @GET("api/film/films")
  Future<List<Film>> getAll();

  @POST("/api/selection/will-watch-sel/{id}")
  Future<void> addToWatchLater(@Path("id") int id);

  @POST("/api/selection/delete-will-watch/{id}")
  Future<void> removeFromWatchLater(@Path("id") int id);

  @GET("/api/picture/get/{id}")
  Future<ResponsePicture> getPicture(@Path("id") int id);

  @GET("/api/picture/get/actual-ids")
  Future<List<int>> getActualIds();
}