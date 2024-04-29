import 'package:flutter/material.dart';
import 'package:movies_tv_app/movies/presentation/view/widgets/movies_details_items_view.dart';
import 'package:movies_tv_app/movies/presentation/view/widgets/recommendation_movies_list_view.dart';

class MoviesDetailsBodyView extends StatelessWidget {
  const MoviesDetailsBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [MoviesDetailsItem()],
    );
  }
}

class MoviesDetailsItem extends StatelessWidget {
  const MoviesDetailsItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MoviesDetailsItemView(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                'More Like this',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            RecommendationMoviesView()
          ]),
    );
  }
}
