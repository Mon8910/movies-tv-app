part of 'topratedmovies_cubit.dart';

@immutable
sealed class TopratedmoviesState {}

final class TopratedmoviesInitial extends TopratedmoviesState {}
final class TopratedmoviesLoading extends TopratedmoviesState {}
final class TopratedmoviesSuccess extends TopratedmoviesState {
  final List<MoviesModel> movies;

  TopratedmoviesSuccess({required this.movies});
}
final class TopratedmoviesFailure extends TopratedmoviesState {
final String errorMessage;

  TopratedmoviesFailure({required this.errorMessage});}

