import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:movies_app/core/error/failure.dart';
import 'package:movies_app/core/usecase/base_usecase.dart';
import 'package:movies_app/movies/domain/entities/movie_details.dart';
import 'package:movies_app/movies/domain/repository/base_movies_repository.dart';

class GetMovieDetailsUseCase extends BaseUseCase<MovieDetails, MovieDetailsParameters> {
  final BaseMoviesRepository baseMoviesRepository;

  GetMovieDetailsUseCase(this.baseMoviesRepository);

  @override
  Future<Either<Failure, MovieDetails>> call(MovieDetailsParameters movieDetailsParameters) async {
    return await baseMoviesRepository.getMovieDetails(movieDetailsParameters);
  }

}

class MovieDetailsParameters extends Equatable {
  final int id;

  const MovieDetailsParameters(this.id);

  @override
  // TODO: implement props
  List<Object?> get props => [id];
}

