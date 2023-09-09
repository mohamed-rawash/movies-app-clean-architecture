import 'package:dartz/dartz.dart';
import 'package:movies_app/core/error/exception.dart';
import 'package:movies_app/tvs/data/datasource/tv_remote_data_source.dart';
import 'package:movies_app/tvs/domain/entities/tv.dart';
import 'package:movies_app/tvs/domain/repository/base_tv_repository.dart';

import '../../../core/error/failure.dart';

class TvRepository extends BaseTvRepository {

  final BaseRemoteDataSource baseRemoteDataSource;

  TvRepository(this.baseRemoteDataSource);


  @override
  Future<Either< Failure, List<Tv>>> getOnTheAir() async {
    final result = await baseRemoteDataSource.getOnTheAirTv();
    try {
      print("===" * 10);
      print(result);
      print("===" * 10);
      return Right(result);
    } on ServerException catch(failure) {
      return Left(ServerFailure(failure.errorMessageModel.statusMessage));
    }
  }

  @override
  Future<Either< Failure, List<Tv>>> getPopularTvs() async {
    final result = await baseRemoteDataSource.getPopularTv();

    try {
      return Right(result);
    } on ServerException catch(failure) {
      return Left(ServerFailure(failure.errorMessageModel.statusMessage));
    }
  }

  @override
  Future<Either< Failure, List<Tv>>> getTopRatedTvs() async {
    final result = await baseRemoteDataSource.getTopRatedTv();

    try {
      return Right(result);
    } on ServerException catch(failure) {
      return Left(ServerFailure(failure.errorMessageModel.statusMessage));
    }
  }

}