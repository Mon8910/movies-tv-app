part of 'nowplaying_movies_cubit.dart';

@immutable
sealed class NowplayingMoviesState {}

final class NowplayingMoviesInitial extends NowplayingMoviesState {}
final class NowplayingMoviesLoading extends NowplayingMoviesState {}
final class NowplayingMoviesSuccess extends NowplayingMoviesState {
  final List<MoviesModel> moviesModel;

  NowplayingMoviesSuccess({required this.moviesModel});
}
final class NowplayingMoviesFailure extends NowplayingMoviesState {
  final String erroeMessage;

  NowplayingMoviesFailure({required this.erroeMessage});
}
