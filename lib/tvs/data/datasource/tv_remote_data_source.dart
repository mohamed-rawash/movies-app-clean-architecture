import 'package:dio/dio.dart';
import 'package:movies_app/core/error/exception.dart';
import 'package:movies_app/core/network/api_constance.dart';
import 'package:movies_app/core/network/error_message_model.dart';
import 'package:movies_app/tvs/data/models/tv_model.dart';


abstract class BaseRemoteDataSource {
  Future<List<TvModel>> getOnTheAirTv();

  Future<List<TvModel>> getPopularTv();

  Future<List<TvModel>> getTopRatedTv();
}

class RemoteDataSource implements BaseRemoteDataSource {
  @override
  Future<List<TvModel>> getOnTheAirTv() async {
    final response = await Dio().get(ApiConstance.onTheAirTv);
    if (response.statusCode == 200) {
      return List<TvModel>.from(
        (response.data['results'] as List).map(
          (e) => TvModel.fromJson(e),
        ),
      );
    } else {
      throw ServerException(errorMessageModel: ErrorMessageModel.fromJSon(response.data));
    }
  }

  @override
  Future<List<TvModel>> getPopularTv() async {
    final response = await Dio().get(ApiConstance.popularTv);
    if (response.statusCode == 200) {
      return List<TvModel>.from(
        (response.data['results'] as List).map(
              (e) => TvModel.fromJson(e),
        ),
      );
    } else {
      throw ServerException(errorMessageModel: ErrorMessageModel.fromJSon(response.data));
    }
  }

  @override
  Future<List<TvModel>> getTopRatedTv() async {
    final response = await Dio().get(ApiConstance.topRatedTv);
    if (response.statusCode == 200) {
      return List<TvModel>.from(
        (response.data['results'] as List).map(
              (e) => TvModel.fromJson(e),
        ),
      );
    } else {
      throw ServerException(errorMessageModel: ErrorMessageModel.fromJSon(response.data));
    }
  }
}
