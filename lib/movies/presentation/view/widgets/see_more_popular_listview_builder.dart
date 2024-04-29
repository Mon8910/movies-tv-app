import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:movies_tv_app/movies/presentation/manager/cubit/popularmovies_cubit_cubit.dart';
import 'package:movies_tv_app/movies/presentation/view/movies_details_view.dart';

class SeeMorePopularListViewBuilder extends StatelessWidget {
  const SeeMorePopularListViewBuilder({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PopularmoviesCubitCubit, PopularmoviesCubitState>(
      builder: (context, state) {
        if (state is PopularmoviesCubitSuccess) {
          return ListView.builder(
              itemCount: state.movies.length,
              itemBuilder: (ctx, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * .2,
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) =>
                                MoviesDetailsView(id: state.movies[index].id)));
                        
                      },
                      child: Card(
                        color: const Color.fromARGB(137, 46, 45, 45),
                        child: Row(
                          children: [
                            SizedBox(
                              // height: MediaQuery.of(context).size.height *.15,
                              child: AspectRatio(
                                  aspectRatio: 2.6 / 4,
                                  child: CachedNetworkImage(
                                    imageUrl:
                                        'https://image.tmdb.org/t/p/w500${state.movies[index].image}',
                                    fit: BoxFit.fill,
                                  )),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(
                                    height: 17,
                                  ),
                                  Text(
                                    state.movies[index].title,
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 30,
                                        width: 50,
                                        decoration: BoxDecoration(
                                            color: Colors.red,
                                            borderRadius:
                                                BorderRadius.circular(3)),
                                        child: const Padding(
                                          padding: EdgeInsets.only(top: 5),
                                          child: Text(
                                            '2022',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      const Icon(
                                        FontAwesomeIcons.star,
                                        color: Colors.amber,
                                        size: 18,
                                      ),
                                      const SizedBox(
                                        width: 8,
                                      ),
                                      Text(
                                        '${state.movies[index].voteAgerage}',
                                        style: TextStyle(
                                            fontSize: 18, color: Colors.white),
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Text(state.movies[index].details,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          fontSize: 18, color: Colors.white)),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              });
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
