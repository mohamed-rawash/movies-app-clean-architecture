import 'package:movies_app/movies/domain/entities/recommendations.dart';

class RecommendationsModel extends Recommendations {
  const RecommendationsModel({required super.id, required super.backdropPath});

  factory RecommendationsModel.fromJson(Map<String, dynamic> json) =>
      RecommendationsModel(
        id: json["id"],
        backdropPath: json["backdrop_path"] ?? "/oqP1qEZccq5AD9TVTIaO6IGUj7o.jpg",
      );
}
