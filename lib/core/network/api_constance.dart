class ApiConstance {
  static const String baseUrl = "https://api.themoviedb.org/3";
  static const String apiKey = "3787d5c621c512cf6d19064b5acac9a7";
  static const String nowPlayingMoviesPath = "$baseUrl/movie/now_playing?api_key=$apiKey";
  static const String popularMoviesPath = "$baseUrl/movie/popular?api_key=$apiKey";
  static const String topRatedMoviesPath = "$baseUrl/movie/top_rated?api_key=$apiKey";
  static const String baseImageUrl = "https://image.tmdb.org/t/p/w500";

  static const String onTheAirTv = "$baseUrl/tv/on_the_air?api_key=$apiKey";
  static const String popularTv = "$baseUrl/tv/popular?api_key=$apiKey";
  static const String topRatedTv = "$baseUrl/tv/top_rated?api_key=$apiKey";

  static String imageUrl(String path) => '$baseImageUrl$path';
  static String movieDetailsPath(int movieId) => '$baseUrl/movie/$movieId?api_key=$apiKey';
  static String movieRecommendationsPath(int movieId) => '$baseUrl/movie/$movieId/recommendations?api_key=$apiKey';
}