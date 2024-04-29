import 'package:movies_tv_app/core/api/api_consumer.dart';
import 'package:movies_tv_app/movies/data/models/movies_model.dart';

class RecommendationMoviesRepo {
  final ApiConsumer apiConsumer;

  RecommendationMoviesRepo({required this.apiConsumer});

  Future<List<MoviesModel>> recommendationMoviesRepo(int id) async {
    final response = await apiConsumer.get(
        'movie/$id/recommendations?api_key=831155179cb3dae7bdf256801f661106');
    final List<MoviesModel> movies = [];
    print('==-=0p=-0p=--= $response');

    for (var moviesList in response['results']) {
      movies.add(MoviesModel.fromJson(moviesList));
    }
    return movies;
  }
}
