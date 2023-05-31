class ApiConstance {
  static const String baseUrl = "https://api.themoviedb.org/3";
  static const String apiKey = "cccc85decbb7396c4962805f6fa37f21";
  static const String nowPlayingMoviesPath = "$baseUrl/movie/now_playing?api_key=$apiKey";
  static const String popularMoviesPath = "$baseUrl/movie/popular?api_key=$apiKey";
  static const String topRatedMoviesPath = "$baseUrl/movie/top_rated?api_key=$apiKey";
}