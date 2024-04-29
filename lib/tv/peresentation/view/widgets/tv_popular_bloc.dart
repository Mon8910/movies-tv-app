import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_tv_app/tv/peresentation/manager/cubit/tvpopular_cubit.dart';

class TvPopularBloc extends StatelessWidget {
  const TvPopularBloc({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TvpopularCubit, TvpopularState>(
      builder: (context, state) {
        if (state is TvpopularSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .25,
            child: ListView.builder(
                itemCount: state.tv.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: AspectRatio(
                      aspectRatio: 2.5 / 3,
                      child: InkWell(
                        onTap: () {
                          // Navigator.of(context).push(MaterialPageRoute(
                          //     builder: (context) => MoviesDetailsView(
                          //           id: state.tv[index].id,
                          //         )));
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadiusDirectional.circular(10),
                          child: CachedNetworkImage(
                            imageUrl:
                                'https://image.tmdb.org/t/p/w500${state.tv[index].image}',
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
