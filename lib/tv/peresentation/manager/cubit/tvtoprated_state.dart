part of 'tvtoprated_cubit.dart';

@immutable
sealed class TvtopratedState {}

final class TvtopratedInitial extends TvtopratedState {}
final class TvtopratedLoading extends TvtopratedState {}
final class TvtopratedSuccess extends TvtopratedState {
  final List<TvModel>tv;

  TvtopratedSuccess({required this.tv});
}
final class TvtopratedFailure extends TvtopratedState {
  final String message;

  TvtopratedFailure({required this.message});

}

