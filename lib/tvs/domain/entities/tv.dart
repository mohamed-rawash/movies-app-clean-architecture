import 'package:equatable/equatable.dart';

class Tv extends Equatable {
  final int id;
  final String backdropPath;
  final String firstAirDate;
  final String name;
  final String overview;
  final double voteAverage;
  final List<int> genreIds;

  const Tv({
    required this.id,
    required this.backdropPath,
    required this.firstAirDate,
    required this.name,
    required this.overview,
    required this.voteAverage,
    required this.genreIds,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [
    id,
    backdropPath,
    firstAirDate,
    name,
    overview,
    voteAverage,
    genreIds,
  ];
}
