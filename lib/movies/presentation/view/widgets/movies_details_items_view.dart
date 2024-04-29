import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:movies_tv_app/movies/presentation/manager/cubit/moviesdetails_cubit.dart';

class MoviesDetailsItemView extends StatelessWidget{
  const MoviesDetailsItemView({super.key});

  @override
  Widget build(BuildContext context) {
   return BlocBuilder<MoviesdetailsCubit, MoviesdetailsState>(
      builder: (context, state) {
        if (state is MoviesdetailsSuccess) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CachedNetworkImage(
                imageUrl:
                    'https://image.tmdb.org/t/p/w500${state.moviesDetailsModel.image}',
                fit: BoxFit.fill,
                width: double.infinity,
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  '${state.moviesDetailsModel.title}',
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  children: [
                    Container(
                      height: 30,
                      width: 100,
                      decoration: const BoxDecoration(color: Colors.black54),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          '${state.moviesDetailsModel.relaseDate}',
                          style: const TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
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
                      '${state.moviesDetailsModel.overview}',
                      style:
                          const TextStyle(fontSize: 16, color: Colors.white),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    Text(
                      '${state.moviesDetailsModel.runTime} min',
                      style: const TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  '${state.moviesDetailsModel.details}',
                  //maxLines: 3,

                  style: const TextStyle(color: Colors.white, fontSize: 14),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
             
            ],
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