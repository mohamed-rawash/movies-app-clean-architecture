part of 'movie_details_bloc.dart';

abstract class MovieDetailsEvent extends Equatable {
  const MovieDetailsEvent();
}

class GetMovieDetailsEvent extends MovieDetailsEvent {
  final int id;

  const GetMovieDetailsEvent(this.id);

  @override
  // TODO: implement props
  List<Object?> get props => [id];
}

class GetRecommendationEvent extends MovieDetailsEvent {
  final int id;

  const GetRecommendationEvent(this.id);

  @override
  // TODO: implement props
  List<Object?> get props => [id];
}