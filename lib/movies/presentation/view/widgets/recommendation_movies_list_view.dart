import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_tv_app/movies/presentation/manager/cubit/recommendationmovies_cubit.dart';

class RecommendationMoviesView extends StatelessWidget {
  const RecommendationMoviesView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RecommendationmoviesCubit, RecommendationmoviesState>(
      builder: (context, state) {
        if (state is RecommendationmoviesSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height *.28,
            child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3, crossAxisSpacing: 1),
                //physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: false,
                itemCount: state.movies.length,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10.0, vertical: 6),
                    child: AspectRatio(
                      aspectRatio: 2 / 3,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: CachedNetworkImage(
                          imageUrl:
                              'https://image.tmdb.org/t/p/w500${state.movies[index].image}',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  );
                }),
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
