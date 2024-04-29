part of 'recommendationmovies_cubit.dart';

@immutable
sealed class RecommendationmoviesState {}

final class RecommendationmoviesInitial extends RecommendationmoviesState {}
final class RecommendationmoviesLoading extends RecommendationmoviesState {}

final class RecommendationmoviesSuccess extends RecommendationmoviesState {
  final List<MoviesModel> movies;

  RecommendationmoviesSuccess({required this.movies});
}

final class RecommendationmoviesFailure extends RecommendationmoviesState {
  final String message;

  RecommendationmoviesFailure({required this.message});

}

