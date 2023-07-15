import 'package:dartz/dartz.dart';
import 'package:movies_app/core/error/exception.dart';
import 'package:movies_app/core/error/failure.dart';
import 'package:movies_app/movies/data/datasource/movie_remote_data_source.dart';
import 'package:movies_app/movies/domain/entities/movie.dart';
import 'package:movies_app/movies/domain/entities/movie_details.dart';
import 'package:movies_app/movies/domain/repository/base_movies_repository.dart';
import 'package:movies_app/movies/domain/usecase/get_movie_details_usecase.dart';

import '../../domain/entities/recommendations.dart';
import '../../domain/usecase/get_recommendation_usecase.dart';

class MovieRepository extends BaseMoviesRepository {
  final BaseMovieRemoteDataSource movieRemoteDataSource;

  MovieRepository(this.movieRemoteDataSource);

  @override
  Future<Either< Failure, List<Movie>>> getNowPlayingMovies() async {
    final result = await movieRemoteDataSource.getNowPlayingMovies();
    try {
      return Right(result);
    } on ServerException catch(failure) {
      return Left(ServerFailure(failure.errorMessageModel.statusMessage));
    }
  }

  @override
  Future<Either< Failure, List<Movie>>> getPopularMovies() async {
    final result = await movieRemoteDataSource.getPopularMovies();
    try {
      return Right(result);
    } on ServerException catch(failure) {
      return Left(ServerFailure(failure.errorMessageModel.statusMessage));
    }
  }

  @override
  Future<Either< Failure, List<Movie>>> getTopRatedMovies() async {
    final result = await movieRemoteDataSource.getTopRatedMovies();
    try {
      return Right(result);
    } on ServerException catch(failure) {
      return Left(ServerFailure(failure.errorMessageModel.statusMessage));
    }
  }

  @override
  Future<Either<Failure, MovieDetails>> getMovieDetails(MovieDetailsParameters parameters) async {
    final result = await movieRemoteDataSource.getMovieDetails(parameters);
    try {
      return Right(result);
    } on ServerException catch(failure) {
      return Left(ServerFailure(failure.errorMessageModel.statusMessage));
    }
  }

  @override
  Future<Either<Failure, List<Recommendations>>> getRecommendationsMovies(RecommendationParameters parameters) async{
    final result = await movieRemoteDataSource.getRecommendationMovies(parameters);
    try {
      return Right(result);
    } on ServerException catch(failure) {
      return Left(ServerFailure(failure.errorMessageModel.statusMessage));
    }
  }

}