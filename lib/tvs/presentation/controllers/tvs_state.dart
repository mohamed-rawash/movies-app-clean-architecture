part of 'tvs_bloc.dart';

class TvsState extends Equatable {
  final List<Tv> onAirTvs;
  final RequestState onAirState;
  final String onAirMessage;
  final List<Tv> popularTvs;
  final RequestState popularState;
  final String popularMessage;
  final List<Tv> topRatedTvs;
  final RequestState topRatedState;
  final String topRatedMessage;

  const TvsState({
    this.onAirTvs = const [],
    this.onAirState = RequestState.loading,
    this.onAirMessage = '',
    this.popularTvs = const [],
    this.popularState = RequestState.loading,
    this.popularMessage = '',
    this.topRatedTvs = const [],
    this.topRatedState = RequestState.loading,
    this.topRatedMessage = '',
  });

  TvsState copyWith({
     List<Tv>? onAirTvs,
     RequestState? onAirState,
     String? onAirMessage,
     List<Tv>? popularTvs,
     RequestState? popularState,
     String? popularMessage,
     List<Tv>? topRatedTvs,
     RequestState? topRatedState,
     String? topRatedMessage,
}) {
    return TvsState(
      onAirTvs: onAirTvs ?? this.onAirTvs,
      onAirState: onAirState ?? this.onAirState,
      onAirMessage: onAirMessage ?? this.onAirMessage,
      popularTvs: popularTvs ?? this.popularTvs,
      popularState: popularState ?? this.popularState,
      popularMessage: popularMessage ?? this.popularMessage,
      topRatedTvs: topRatedTvs ?? this.topRatedTvs,
      topRatedState: topRatedState ?? this.topRatedState,
      topRatedMessage: topRatedMessage ?? this.topRatedMessage,
    );
  }

  @override
  List<Object> get props => [
    onAirTvs,
    onAirState,
    onAirMessage,
    popularTvs,
    popularState,
    popularMessage,
    topRatedTvs,
    topRatedState,
    topRatedMessage,
  ];
}
