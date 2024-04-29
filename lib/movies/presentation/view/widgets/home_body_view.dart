import 'package:flutter/material.dart';
import 'package:movies_tv_app/movies/presentation/view/widgets/now_playing_movies_list_view.dart';
import 'package:movies_tv_app/movies/presentation/view/widgets/popular_movies.dart';
import 'package:movies_tv_app/movies/presentation/view/widgets/top_rated_movies.dart';

class HomeBodyView extends StatelessWidget {
  const HomeBodyView({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: const Column(
        children: [
          NowPlayingMoviesListView(),
          SizedBox(
            height: 30,
          ),
          PopularMovies(),
          SizedBox(height: 40,),
          TopRatedMovies()
        ],
      ),
    );
  }
}



