import 'package:get_it/get_it.dart';
import 'package:movies_app/movies/data/datasource/movie_remote_data_source.dart';
import 'package:movies_app/movies/data/repository/movie_repository.dart';
import 'package:movies_app/movies/domain/repository/base_movies_repository.dart';
import 'package:movies_app/movies/domain/usecase/get_movie_details_usecase.dart';
import 'package:movies_app/movies/domain/usecase/get_now_playing_movies_usecase.dart';
import 'package:movies_app/movies/domain/usecase/get_popular_movies_usecase.dart';
import 'package:movies_app/movies/domain/usecase/get_recommendation_usecase.dart';
import 'package:movies_app/movies/domain/usecase/get_top_rated_movies_usecase.dart';
import 'package:movies_app/movies/presentation/controllers/movie_details_bloc.dart';
import 'package:movies_app/movies/presentation/controllers/movies_bloc.dart';
import 'package:movies_app/tvs/data/datasource/tv_remote_data_source.dart';
import 'package:movies_app/tvs/data/repository/tv_repository.dart';
import 'package:movies_app/tvs/domain/repository/base_tv_repository.dart';
import 'package:movies_app/tvs/presentation/controllers/tvs_bloc.dart';

import '../../tvs/domain/usecase/on_the_air_tv_usecase.dart';
import '../../tvs/domain/usecase/popular_tv_usecase.dart';
import '../../tvs/domain/usecase/top_rated_tv_usecase.dart';

final sl = GetIt.instance;

class ServicesLocator {
  void init() {
    /// Bloc
    sl.registerFactory(() => MoviesBloc(sl(), sl(), sl(), ));
    sl.registerFactory(() => MovieDetailsBloc(sl(), sl()));
    sl.registerFactory(() => TvsBloc(sl(), sl(), sl()));

    ///UseCases
    sl.registerLazySingleton(() => GetNowPlayingMoviesUseCase(sl()));
    sl.registerLazySingleton(() => GetPopularMoviesUseCase(sl()));
    sl.registerLazySingleton(() => GetTopRatedMoviesUseCase(sl()));
    sl.registerLazySingleton(() => GetMovieDetailsUseCase(sl()));
    sl.registerLazySingleton(() => GetRecommendationUseCase(sl()));

    sl.registerLazySingleton(() => OnTheAirTvUseCase(sl()));
    sl.registerLazySingleton(() => PopularTvUseCase(sl()));
    sl.registerLazySingleton(() => TopRatedTvUseCase(sl()));

    /// Repository
    sl.registerLazySingleton<BaseMoviesRepository>(() => MovieRepository(sl()));
    sl.registerLazySingleton<BaseTvRepository>(() => TvRepository(sl()));

    /// Data Source
    sl.registerLazySingleton<BaseMovieRemoteDataSource>(() => MovieRemoteDataSource());
    sl.registerLazySingleton<BaseRemoteDataSource>(() => RemoteDataSource());
  }
}