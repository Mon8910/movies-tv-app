import 'package:movies_tv_app/core/api/api_consumer.dart';
import 'package:movies_tv_app/movies/data/models/movies_model.dart';

class PopularMoviesRepo {
  final ApiConsumer apiConsumer;

  PopularMoviesRepo({required this.apiConsumer});
  Future<List<MoviesModel>> popularMoviesRepo() async {
    final response = await apiConsumer
        .get('movie/popular?api_key=831155179cb3dae7bdf256801f661106');
    final List<MoviesModel> movies = [];
    for (var moviesList in response['results']) {
      movies.add(MoviesModel.fromJson(moviesList));
    }
    return movies;
  }
}
