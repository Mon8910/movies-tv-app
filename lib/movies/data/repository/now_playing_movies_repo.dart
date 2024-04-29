import 'dart:developer';

import 'package:movies_tv_app/core/api/api_consumer.dart';
import 'package:movies_tv_app/movies/data/models/movies_model.dart';

class NowPlayingMoviesRepo {
  

  final ApiConsumer apiConsumer;

  NowPlayingMoviesRepo({required this.apiConsumer});
  Future<List<MoviesModel>> nowPlayingMoviesRepo() async {
    
       final response = await apiConsumer
        .get('movie/now_playing?api_key=831155179cb3dae7bdf256801f661106');
       // print('knknknknkn $response');
       final  List<MoviesModel> movies = [];
      for (var movieslist in response['results']) {
        movies.add(MoviesModel.fromJson(movieslist));
      }
      log('================== $response');
     
      
      return movies;

    } 
  }

