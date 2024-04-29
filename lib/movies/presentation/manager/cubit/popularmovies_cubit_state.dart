part of 'popularmovies_cubit_cubit.dart';

@immutable
sealed class PopularmoviesCubitState {}

final class PopularmoviesCubitInitial extends PopularmoviesCubitState {}
final class PopularmoviesCubitLoading extends PopularmoviesCubitState {}
final class PopularmoviesCubitSuccess extends PopularmoviesCubitState {
  final List<MoviesModel> movies;

  PopularmoviesCubitSuccess({required this.movies});
}
final class PopularmoviesCubitFailure extends PopularmoviesCubitState {
  final String errorMessage;

  PopularmoviesCubitFailure({required this.errorMessage});
}

