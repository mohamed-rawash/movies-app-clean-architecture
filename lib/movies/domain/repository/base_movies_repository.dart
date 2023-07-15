import 'package:dartz/dartz.dart';
import 'package:movies_app/movies/domain/entities/recommendations.dart';
import 'package:movies_app/movies/domain/usecase/get_movie_details_usecase.dart';

import '../../../core/error/failure.dart';
import '../entities/movie.dart';
import '../entities/movie_details.dart';
import '../usecase/get_recommendation_usecase.dart';

abstract class BaseMoviesRepository {
  Future<Either<Failure, List<Movie>>> getNowPlayingMovies();

  Future<Either<Failure, List<Movie>>> getPopularMovies();

  Future<Either<Failure, List<Movie>>> getTopRatedMovies();

  Future<Either<Failure, MovieDetails>> getMovieDetails(
      MovieDetailsParameters parameters);

  Future<Either<Failure, List<Recommendations>>> getRecommendationsMovies(
      RecommendationParameters parameters);
}
