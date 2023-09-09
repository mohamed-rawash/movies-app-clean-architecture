part of 'tvs_bloc.dart';

abstract class TvsEvent extends Equatable {
  const TvsEvent();

  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class GetOnAirTvsEvent extends TvsEvent {}
class GetPopularTvsEvent extends TvsEvent {}
class GetTopRatedTvsEvent extends TvsEvent {}