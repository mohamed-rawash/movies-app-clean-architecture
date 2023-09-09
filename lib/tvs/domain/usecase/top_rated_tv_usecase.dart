import 'package:dartz/dartz.dart';

import '../../../core/error/failure.dart';
import '../entities/tv.dart';
import '../repository/base_tv_repository.dart';

class TopRatedTvUseCase {
  BaseTvRepository baseTvRepository;

  TopRatedTvUseCase(this.baseTvRepository);

  Future<Either< Failure, List<Tv>>> call() async {
    return await baseTvRepository.getTopRatedTvs();
  }
}