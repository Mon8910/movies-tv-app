import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:movies_tv_app/movies/data/models/movies_model.dart';
import 'package:movies_tv_app/movies/data/repository/popular_movies_repo.dart';

part 'popularmovies_cubit_state.dart';

class PopularmoviesCubitCubit extends Cubit<PopularmoviesCubitState> {
  PopularmoviesCubitCubit(this.popularMoviesRepo) : super(PopularmoviesCubitInitial());
  final PopularMoviesRepo popularMoviesRepo;
  getPopoularMovies()async{
    emit(PopularmoviesCubitLoading());
    var results=await popularMoviesRepo.popularMoviesRepo();
    emit(PopularmoviesCubitSuccess(movies: results));

  }
}
