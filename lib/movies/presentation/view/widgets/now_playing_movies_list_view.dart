import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_tv_app/movies/data/models/movies_model.dart';
import 'package:movies_tv_app/movies/presentation/manager/cubit/nowplaying_movies_cubit.dart';
import 'package:movies_tv_app/movies/presentation/view/widgets/now_playing_movies.dart';

class NowPlayingMoviesListView extends StatelessWidget {
  const NowPlayingMoviesListView({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NowplayingMoviesCubit, NowplayingMoviesState>(
      builder: (context, state) {
        if(state is NowplayingMoviesSuccess){
         return NowPlayingList(movies: state.moviesModel,);
        }
        
        else {
          return CircularProgressIndicator();
        }
      },
    );
  }
}

class NowPlayingList extends StatelessWidget{
  const NowPlayingList({super.key, required this.movies});
  final List<MoviesModel> movies;

  @override
  Widget build(BuildContext context) {
   return SizedBox(
          height: MediaQuery.of(context).size.height * .35,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: movies.length,
            itemBuilder: (context, index) {
              return  NowPlayingMovies(text: movies[index].title, image: movies[index].image??'',);
            },
          ),
        );
  }

}

