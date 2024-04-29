import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_tv_app/movies/presentation/manager/cubit/moviesdetails_cubit.dart';
import 'package:movies_tv_app/movies/presentation/manager/cubit/recommendationmovies_cubit.dart';
import 'package:movies_tv_app/movies/presentation/view/widgets/movies_details_body.dart';

class MoviesDetailsView extends StatefulWidget{
  const MoviesDetailsView({super.key, required this.id});
  final int id;

  @override
  State<MoviesDetailsView> createState() => _MoviesDetailsViewState();
}

class _MoviesDetailsViewState extends State<MoviesDetailsView> {
  
  @override
  void initState() {
   BlocProvider.of<MoviesdetailsCubit>(context).getMoviesDetails(widget.id);
  BlocProvider.of<RecommendationmoviesCubit>(context).getRecommendationMovies(widget.id);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
   return const Scaffold(
    backgroundColor: Color.fromARGB(193, 55, 54, 66),
    body: MoviesDetailsBodyView(),

   );
  }
}