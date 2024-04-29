import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:movies_tv_app/movies/data/models/movies_model.dart';
import 'package:movies_tv_app/movies/data/repository/toprated_movies_repo.dart';

part 'topratedmovies_state.dart';

class TopratedmoviesCubit extends Cubit<TopratedmoviesState> {
  TopratedmoviesCubit(this.topRatedMoviesRepo) : super(TopratedmoviesInitial());
  final TopRatedMoviesRepo topRatedMoviesRepo;
  getTopRatedMovies() async {
    emit(TopratedmoviesLoading());
    var results = await topRatedMoviesRepo.topRatedMoviesRepo();
    emit(TopratedmoviesSuccess(movies: results));
  }
}
