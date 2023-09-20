import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:movie_genie/core/domain/user_data.dart';

class TokenInterceptor extends QueuedInterceptor {
  final Dio _dio;

  get _accessToken => tokenRepo.accessToken;

  get _refreshToken => tokenRepo.refreshToken;

  final UserData tokenRepo;

  TokenInterceptor(this._dio, this.tokenRepo);

  @override
  void onRequest(options, handler) {
    final String localToken = _accessToken ?? "";
    if (localToken.isNotEmpty &&
        (options.path != "api/film/films" &&
            options.path != "/api/selection/selection" &&
            options.path != "/auth/user/refresh")) {
      debugPrint(options.path);
      options.headers['Authorization'] = 'Bearer $_accessToken';
    }

    return super.onRequest(options, handler);
  }

  /// Save tokens received after authorization.
  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) async {
    super.onResponse(response, handler);
  }

  /// Update JWT token if it is outdated.
  @override
  Future onError(error, handler) async {
    if ((error.response?.statusCode == 451 ||
            error.response?.statusCode == 401 ||
            error.response?.statusCode == 403) &&
        (error.requestOptions.path != 'api/auth/register' ||
            error.requestOptions.path != '/api/auth/login')) {
      await _refresh();
      if (tokenRepo.isLoggedIn.valueOrNull ?? false) {
        final response = await _retry(error.requestOptions);
        handler.resolve(response);
      }
    }
    return super.onError(error, handler);
  }

  /// Make a request to update the JWT token and save it to cache.
  Future<void> _refresh() async {
    final String localToken = _refreshToken ?? "";
    if (localToken.isEmpty) {
      return;
    }

    try {
      final response = await _dio.post(
        '/auth/token/refresh',
        data: {
          'refresh_token': _refreshToken,
        },
      );

      if (response.statusCode == 201 || response.statusCode == 200) {
        tokenRepo.accessToken = response.data['access_token'];
        tokenRepo.refreshToken = response.data['refresh_token'];
        tokenRepo.saveTokens();
      }
    } catch (e) {
      tokenRepo.clearTokens();
    }
  }

  /// Repeat the failed request.
  Future<Response<dynamic>> _retry(RequestOptions requestOptions) {
    final options = Options(
      method: requestOptions.method,
      headers: requestOptions.headers,
    );

    return _dio.request<dynamic>(
      requestOptions.path,
      data: requestOptions.data,
      queryParameters: requestOptions.queryParameters,
      options: options,
    );
  }
}
