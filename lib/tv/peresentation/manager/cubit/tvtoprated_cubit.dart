import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:movies_tv_app/tv/peresentation/data/model/tv_model.dart';
import 'package:movies_tv_app/tv/peresentation/data/repo/tv_toprated_repo.dart';

part 'tvtoprated_state.dart';

class TvtopratedCubit extends Cubit<TvtopratedState> {
  TvtopratedCubit(this.tvTpRatedRepo) : super(TvtopratedInitial());
  final TvTpRatedRepo tvTpRatedRepo;
  getTvTopRated()async{
    emit(TvtopratedLoading());
    var results=await tvTpRatedRepo.tvTopRatedRepo();
    emit(TvtopratedSuccess(tv: results));

  }
}
