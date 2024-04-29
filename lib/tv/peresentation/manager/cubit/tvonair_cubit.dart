import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:movies_tv_app/tv/peresentation/data/model/tv_model.dart';
import 'package:movies_tv_app/tv/peresentation/data/repo/tv_onair_repo.dart';

part 'tvonair_state.dart';

class TvonairCubit extends Cubit<TvonairState> {
  TvonairCubit(this.tvOnAirRepo) : super(TvonairInitial());
  final TvOnAirRepo tvOnAirRepo;
  getTvsOnAir() async {
    emit(TvonairLoading());
    var results = await tvOnAirRepo.tvOnAirRepo();
    emit(TvonairSuccess(tv: results));
  }
}
