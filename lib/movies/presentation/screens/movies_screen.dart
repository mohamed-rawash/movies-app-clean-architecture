import 'package:flutter/material.dart';
import 'package:movies_app/movies/data/datasource/movie_remote_data_source.dart';
import 'package:movies_app/movies/data/repository/movie_repository.dart';
import 'package:movies_app/movies/domain/repository/base_movies_repository.dart';
import 'package:movies_app/movies/domain/usecase/get_now_playing_movies_usecase.dart';

class MoviesScreen extends StatefulWidget {
  const MoviesScreen({Key? key}) : super(key: key);

  @override
  State<MoviesScreen> createState() => _MoviesScreenState();
}

class _MoviesScreenState extends State<MoviesScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
  @override
  void initState() {
    _getData();
    super.initState();
  }

  _getData() async {
    BaseMovieRemoteDataSource movieRemoteDataSource = MovieRemoteDataSource();
    BaseMoviesRepository baseMoviesRepository = MovieRepository(movieRemoteDataSource);
    final result = await GetNowPlayingMoviesUseCase(baseMoviesRepository).execute();
    print(result);
  }
}
