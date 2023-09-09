import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:movies_app/core/utils/enums.dart';

import '../../domain/entities/tv.dart';
import '../../domain/usecase/on_the_air_tv_usecase.dart';
import '../../domain/usecase/popular_tv_usecase.dart';
import '../../domain/usecase/top_rated_tv_usecase.dart';

part 'tvs_event.dart';

part 'tvs_state.dart';

class TvsBloc extends Bloc<TvsEvent, TvsState> {
  OnTheAirTvUseCase onTheAirTvUseCase;
  PopularTvUseCase popularTvUseCase;
  TopRatedTvUseCase topRatedTvUseCase;

  TvsBloc(
    this.onTheAirTvUseCase,
    this.popularTvUseCase,
    this.topRatedTvUseCase,
  ) : super(const TvsState()) {
    on<GetOnAirTvsEvent>(_getOnAirTvs);
    on<GetPopularTvsEvent>(_getPopularTvs);
    on<GetTopRatedTvsEvent>(_getTopRatedTvs);
  }

  FutureOr<void> _getOnAirTvs(GetOnAirTvsEvent event, Emitter<TvsState> emit) async {
    final result = await onTheAirTvUseCase.call();

    result.fold(
          (l) => emit(
        state.copyWith(
          onAirState: RequestState.error,
          onAirMessage: l.message,
        ),
      ),
          (r) => emit(
        state.copyWith(
          onAirTvs: r,
          onAirState: RequestState.loaded,
        ),
      ),
    );
  }

  Future<FutureOr<void>> _getPopularTvs(GetPopularTvsEvent event, Emitter<TvsState> emit) async {
    final result = await popularTvUseCase.call();

    result.fold(
          (l) => emit(
        state.copyWith(
          popularState: RequestState.error,
          popularMessage: l.message,
        ),
      ),
          (r) => emit(
        state.copyWith(
          popularTvs: r,
          popularState: RequestState.loaded,
        ),
      ),
    );
  }

  Future<FutureOr<void>> _getTopRatedTvs(GetTopRatedTvsEvent event, Emitter<TvsState> emit) async {
    final result = await topRatedTvUseCase.call();

    result.fold(
          (l) => emit(
        state.copyWith(
          topRatedState: RequestState.error,
          topRatedMessage: l.message,
        ),
      ),
          (r) => emit(
        state.copyWith(
          topRatedTvs: r,
          topRatedState: RequestState.loaded,
        ),
      ),
    );
  }
}
