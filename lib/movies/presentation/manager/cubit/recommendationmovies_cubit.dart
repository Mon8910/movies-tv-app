import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:movies_tv_app/movies/data/models/movies_model.dart';
import 'package:movies_tv_app/movies/data/repository/recommendation_movies_repo.dart';

part 'recommendationmovies_state.dart';

class RecommendationmoviesCubit extends Cubit<RecommendationmoviesState> {
  RecommendationmoviesCubit(this.recommendationMoviesRepo)
      : super(RecommendationmoviesInitial());
  final RecommendationMoviesRepo recommendationMoviesRepo;

  getRecommendationMovies(int id) async {
    emit(RecommendationmoviesLoading());
    var results = await recommendationMoviesRepo.recommendationMoviesRepo(id);
    emit(RecommendationmoviesSuccess(movies: results));
  }
}
