import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:movies_tv_app/movies/data/models/movies_details_model.dart';
import 'package:movies_tv_app/movies/data/repository/movies_details_repo.dart';

part 'moviesdetails_state.dart';

class MoviesdetailsCubit extends Cubit<MoviesdetailsState> {
  MoviesdetailsCubit(this.moviesDetailsRepo) : super(MoviesdetailsInitial());
  final MoviesDetailsRepo moviesDetailsRepo;

  getMoviesDetails(int id) async {
    emit(MoviesdetailsLoading());
    var results = await moviesDetailsRepo.moviesDetailsRepo(id);
    emit(MoviesdetailsSuccess(moviesDetailsModel: results!));
  }
}
