import 'package:movies_tv_app/core/api/api_consumer.dart';
import 'package:movies_tv_app/movies/data/models/movies_model.dart';

class TopRatedMoviesRepo{
  final ApiConsumer apiConsumer;

  TopRatedMoviesRepo({required this.apiConsumer});
  Future<List<MoviesModel>> topRatedMoviesRepo()async{
    final response=await apiConsumer.get('movie/top_rated?api_key=831155179cb3dae7bdf256801f661106');
    final List<MoviesModel>movies=[];
    for(var moviesList in response['results']){
      movies.add(MoviesModel.fromJson(moviesList));
    }
    return movies;
  }
}