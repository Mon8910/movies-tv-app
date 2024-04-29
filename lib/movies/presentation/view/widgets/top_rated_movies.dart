import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:movies_tv_app/movies/presentation/view/widgets/see_more_toprated.dart';
import 'package:movies_tv_app/movies/presentation/view/widgets/top_rated_movies_list_view.dart';

class TopRatedMovies extends StatelessWidget {
  const TopRatedMovies({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          Row(
            children: [
              const Text(
                'TopRated',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
              const Spacer(),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const SeeMoreTopRated(),
                    ),
                  );
                },
                child: const Row(
                  children: [
                    Text(
                      'see more',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      FontAwesomeIcons.arrowRight,
                      color: Colors.white,
                    )
                  ],
                ),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const TopRatedMoviesListView(),
          SizedBox(height: 30,)
        ],
      ),
    );
  }
}
