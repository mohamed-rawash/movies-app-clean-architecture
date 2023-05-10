import '../entities/movie.dart';

abstract class BaseMoviesRepository {

  Future<List<Movie>> getNowPlayingMovies();

  Future<List<Movie>> getPopularMovies();
  
  Future<List<Movie>> getTopRatedMovies();

}