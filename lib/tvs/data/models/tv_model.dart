import 'package:movies_app/tvs/domain/entities/tv.dart';

class TvModel extends Tv {
  const TvModel({
    required super.id,
    required super.backdropPath,
    required super.firstAirDate,
    required super.name,
    required super.overview,
    required super.voteAverage,
    required super.genreIds,
  });

  factory TvModel.fromJson(Map<String, dynamic> json) => TvModel(
        id: json['id'],
        backdropPath: json['backdrop_path'],
        firstAirDate: json['first_air_date'],
        name: json['name'],
        overview: json['overview'],
        voteAverage: json['vote_average'].toDouble(),
        genreIds: List<int>.from(json['genre_ids'].map((e) => e)),
      );
}
