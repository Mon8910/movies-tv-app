import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_tv_app/core/api/dio_consumer.dart';
import 'package:movies_tv_app/home_view.dart';
import 'package:movies_tv_app/movies/data/repository/movies_details_repo.dart';
import 'package:movies_tv_app/movies/data/repository/now_playing_movies_repo.dart';
import 'package:movies_tv_app/movies/data/repository/popular_movies_repo.dart';
import 'package:movies_tv_app/movies/data/repository/recommendation_movies_repo.dart';
import 'package:movies_tv_app/movies/data/repository/toprated_movies_repo.dart';
import 'package:movies_tv_app/movies/presentation/manager/cubit/moviesdetails_cubit.dart';
import 'package:movies_tv_app/movies/presentation/manager/cubit/nowplaying_movies_cubit.dart';
import 'package:movies_tv_app/movies/presentation/manager/cubit/popularmovies_cubit_cubit.dart';
import 'package:movies_tv_app/movies/presentation/manager/cubit/recommendationmovies_cubit.dart';
import 'package:movies_tv_app/movies/presentation/manager/cubit/topratedmovies_cubit.dart';
import 'package:movies_tv_app/tv/peresentation/data/repo/tv_onair_repo.dart';
import 'package:movies_tv_app/tv/peresentation/data/repo/tv_popular_repo.dart';
import 'package:movies_tv_app/tv/peresentation/data/repo/tv_toprated_repo.dart';
import 'package:movies_tv_app/tv/peresentation/manager/cubit/tvonair_cubit.dart';
import 'package:movies_tv_app/tv/peresentation/manager/cubit/tvpopular_cubit.dart';
import 'package:movies_tv_app/tv/peresentation/manager/cubit/tvtoprated_cubit.dart';

void main() {
  runApp(const MainPage());
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
              create: (context) => NowplayingMoviesCubit(
                    NowPlayingMoviesRepo(
                      apiConsumer: DioConsumer(
                        dio: Dio(),
                      ),
                    ),
                  )..getMovies()),
          BlocProvider(
            create: (context) => PopularmoviesCubitCubit(
              PopularMoviesRepo(
                apiConsumer: DioConsumer(
                  dio: Dio(),
                ),
              ),
            )..getPopoularMovies(),
          ),
          BlocProvider(
            create: (context) => TopratedmoviesCubit(
              TopRatedMoviesRepo(
                apiConsumer: DioConsumer(
                  dio: Dio(),
                ),
              ),
            )..getTopRatedMovies(),
          ),
          BlocProvider(
            create: ((context) => MoviesdetailsCubit(
                  MoviesDetailsRepo(
                    apiConsumer: DioConsumer(
                      dio: Dio(),
                    ),
                  ),
                )),
          ),
          BlocProvider(
              create: (context) =>
                  RecommendationmoviesCubit(RecommendationMoviesRepo(
                    apiConsumer: DioConsumer(
                      dio: Dio(),
                    ),
                  ))),
          BlocProvider(
            create: (context) => TvonairCubit(
              TvOnAirRepo(
                apiConsumer: DioConsumer(
                  dio: Dio(),
                ),
              ),
            )..getTvsOnAir(),
          ),
          BlocProvider(
            create: (context) => TvpopularCubit(
              TvPopularRepo(
                apiConsumer: DioConsumer(
                  dio: Dio(),
                ),
              ),
            )..getTvPopular(),
          ),
          BlocProvider(
            create: (context) => TvtopratedCubit(
              TvTpRatedRepo(
                apiConsumer: DioConsumer(
                  dio: Dio(),
                ),
              ),
            )..getTvTopRated(),
          ),
        ],
        child: const MaterialApp(
          home: Home(),
        ));
  }
}
