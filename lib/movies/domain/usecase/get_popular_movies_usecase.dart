import 'package:dartz/dartz.dart';
import 'package:movies_app/movies/domain/entities/movie.dart';

import '../../../core/error/failure.dart';
import '../repository/base_movies_repository.dart';

class GetPopularMoviesUseCase {
  final BaseMoviesRepository baseMoviesRepository;

  GetPopularMoviesUseCase(this.baseMoviesRepository);

  Future<Either< Failure, List<Movie>>> execute() async {
    return await baseMoviesRepository.getPopularMovies();
  }
}