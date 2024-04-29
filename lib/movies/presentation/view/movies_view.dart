import 'package:flutter/material.dart';
import 'package:movies_tv_app/movies/presentation/view/widgets/home_body_view.dart';

class MoviesView extends StatelessWidget {
  const MoviesView({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromARGB(193, 55, 54, 66),
      body: HomeBodyView(),
    );
  }
}
