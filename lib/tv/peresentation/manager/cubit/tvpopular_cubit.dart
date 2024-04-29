import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:movies_tv_app/tv/peresentation/data/model/tv_model.dart';
import 'package:movies_tv_app/tv/peresentation/data/repo/tv_popular_repo.dart';

part 'tvpopular_state.dart';

class TvpopularCubit extends Cubit<TvpopularState> {
  TvpopularCubit(this.tvPopularRepo) : super(TvpopularInitial());
  final TvPopularRepo tvPopularRepo;
  getTvPopular() async {
    emit(TvpopularLoading());
    var results = await tvPopularRepo.tvPopularRepo();
    emit(TvpopularSuccess(tv: results));
  }
}
