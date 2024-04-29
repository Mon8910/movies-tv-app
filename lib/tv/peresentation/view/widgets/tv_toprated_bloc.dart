import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_tv_app/tv/peresentation/manager/cubit/tvtoprated_cubit.dart';

class TvTopRatedBloc extends StatelessWidget {
  const TvTopRatedBloc({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TvtopratedCubit, TvtopratedState>(
      builder: (context, state) {
        if (state is TvtopratedSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .25,
            child: ListView.builder(
                itemCount: state.tv.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: InkWell(
                      
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: AspectRatio(
                            aspectRatio: 2.5 / 3,
                            child: CachedNetworkImage(
                              imageUrl:
                                  'https://image.tmdb.org/t/p/w500${state.tv[index].image}',
                              fit: BoxFit.fill,
                            )),
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
