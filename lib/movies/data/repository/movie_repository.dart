import 'package:dartz/dartz.dart';
import 'package:movies_app/core/error/exception.dart';
import 'package:movies_app/core/error/failure.dart';
import 'package:movies_app/movies/data/datasource/movie_remote_data_source.dart';
import 'package:movies_app/movies/domain/entities/movie.dart';
import 'package:movies_app/movies/domain/repository/base_movies_repository.dart';

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

}