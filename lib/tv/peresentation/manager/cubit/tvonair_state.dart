part of 'tvonair_cubit.dart';

@immutable
sealed class TvonairState {}

final class TvonairInitial extends TvonairState {}
final class TvonairLoading extends TvonairState {}
final class TvonairSuccess extends TvonairState {
  final List<TvModel>tv;

  TvonairSuccess({required this.tv});
}
final class TvonairFailure extends TvonairState {
 final String message;

  TvonairFailure({required this.message});
}
