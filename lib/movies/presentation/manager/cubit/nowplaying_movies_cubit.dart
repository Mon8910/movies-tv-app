import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:movies_tv_app/movies/data/models/movies_model.dart';
import 'package:movies_tv_app/movies/data/repository/now_playing_movies_repo.dart';

part 'nowplaying_movies_state.dart';

class NowplayingMoviesCubit extends Cubit<NowplayingMoviesState> {
  NowplayingMoviesCubit(this.nowPlayingMoviesRepo) : super(NowplayingMoviesInitial());
  final NowPlayingMoviesRepo nowPlayingMoviesRepo;
  getMovies()async{
    emit(NowplayingMoviesLoading());
    var response=await nowPlayingMoviesRepo.nowPlayingMoviesRepo();
    emit(NowplayingMoviesSuccess(moviesModel: response));

  }
}
