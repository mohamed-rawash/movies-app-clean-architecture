import '../repository/base_movies_repository.dart';

class GetNowPlayingMoviesUseCase {
  final BaseMoviesRepository baseMoviesRepository;

  GetNowPlayingMoviesUseCase(this.baseMoviesRepository);

  Future execute() async {
    return await baseMoviesRepository.getNowPlayingMovies();
  }
}