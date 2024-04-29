import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_tv_app/movies/presentation/manager/cubit/popularmovies_cubit_cubit.dart';
import 'package:movies_tv_app/movies/presentation/view/movies_details_view.dart';

class PopularMoviesListView extends StatelessWidget {
  const PopularMoviesListView({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PopularmoviesCubitCubit, PopularmoviesCubitState>(
      builder: (context, state) {
        if (state is PopularmoviesCubitSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .25,
            child: ListView.builder(
                itemCount: state.movies.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: AspectRatio(
                      aspectRatio: 2.5 / 3,
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => MoviesDetailsView(
                                    id: state.movies[index].id,
                                  )));
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadiusDirectional.circular(10),
                          child: CachedNetworkImage(
                            imageUrl:
                                'https://image.tmdb.org/t/p/w500${state.movies[index].image}',
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                  );
                }),
          );
        } else {
          return CircularProgressIndicator();
        }
      },
    );
  }
}
