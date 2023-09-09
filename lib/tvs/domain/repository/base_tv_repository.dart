import 'package:dartz/dartz.dart';

import '../../../core/error/failure.dart';
import '../entities/tv.dart';

abstract class BaseTvRepository {
  Future<Either< Failure, List<Tv>>> getOnTheAir();
  Future<Either< Failure, List<Tv>>> getPopularTvs();
  Future<Either< Failure, List<Tv>>> getTopRatedTvs();
}