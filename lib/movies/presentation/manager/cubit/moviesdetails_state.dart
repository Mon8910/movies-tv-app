part of 'moviesdetails_cubit.dart';

@immutable
sealed class MoviesdetailsState {}

final class MoviesdetailsInitial extends MoviesdetailsState {}
final class MoviesdetailsFailure extends MoviesdetailsState {
  final String errorMessage;

  MoviesdetailsFailure({required this.errorMessage});
}
final class MoviesdetailsLoading extends MoviesdetailsState {}
final class MoviesdetailsSuccess extends MoviesdetailsState {
  final MoviesDetailsModel moviesDetailsModel;

  MoviesdetailsSuccess({required this.moviesDetailsModel});
}
