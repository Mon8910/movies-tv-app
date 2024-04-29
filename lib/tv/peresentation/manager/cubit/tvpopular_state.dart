part of 'tvpopular_cubit.dart';

@immutable
sealed class TvpopularState {}

final class TvpopularInitial extends TvpopularState {}

final class TvpopularLoading extends TvpopularState {}

final class TvpopularSuccess extends TvpopularState {
  final List<TvModel> tv;

  TvpopularSuccess({required this.tv});
}

final class TvpopularFailure extends TvpopularState {
  final String message;

  TvpopularFailure({required this.message});
}
