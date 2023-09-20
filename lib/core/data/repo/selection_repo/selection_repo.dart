import 'package:dio/dio.dart';
import 'package:movie_genie/core/data/model/main_page_response/main_page_response.dart';
import 'package:movie_genie/core/data/model/response_picture/response_picture.dart';
import 'package:movie_genie/core/data/model/selection/selection.dart';
import 'package:movie_genie/core/data/request/update_selection_cover/update_selection_cover.dart';
import 'package:retrofit/http.dart';

part 'selection_repo.g.dart';

@RestApi()
abstract class SelectionRepo {
  factory SelectionRepo(Dio dio, {String baseUrl}) = _SelectionRepo;

  @GET("api/selection/{id}")
  Future<Selection> get(@Path("id") int id);

  @POST("/api/selection/cover-update")
  Future<int> updateCover(@Body() UpdateSelectionCoverRequest updateCover);

  @GET("/api/user/sel")
  Future<List<Selection>> getFavorites();

  @GET("/api/selection/selection")
  Future<List<Selection>> getAll();

  @POST("/api/selection/delete/{selection_id}")
  Future<void> delete(@Path("selection_id") int id);

  @POST("/api/selection/save")
  Future<int> create(@Body() Selection selection);

  @POST("/api/selection/{selection_id}/delete/{film_id}")
  Future<void> deleteFromSelection({
  @Path("selection_id")
    required int selectionId,
    @Path("film_id")
    required int filmId,
  });

  @POST("/api/selection/{selection_id}/cust-sel/{film_id}")
  Future<void> addFilmToSelection({
    @Path("selection_id")
    required int selectionId,
    @Path("film_id")
    required int filmId,
  });

  @POST("/api/user/add/{id}")
  Future<void> saveToFavorites(@Path("id") int id);

  @POST("/api/user/delete/{id}")
  Future<void> removeFromFavorites(@Path("id") int id);

  @GET("/api/picture/get/{id}")
  Future<ResponsePicture> getPicture(@Path("id") int id);

  @GET("/api/picture/get/actual-ids")
  Future<List<int>> getActualIds();
}
