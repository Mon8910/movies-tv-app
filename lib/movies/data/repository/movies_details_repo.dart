import 'package:movies_tv_app/core/api/api_consumer.dart';
import 'package:movies_tv_app/movies/data/models/movies_details_model.dart';

class MoviesDetailsRepo {
  final ApiConsumer apiConsumer;

  MoviesDetailsRepo({required this.apiConsumer});

  Future moviesDetailsRepo(int id) async {
    final response = await apiConsumer
        .get('movie/$id?api_key=831155179cb3dae7bdf256801f661106');
    final data = MoviesDetailsModel.fromJson(response);
    print('fyhhvjhbj,nklnklnjlk=======$data');
    return data;
  }
}
