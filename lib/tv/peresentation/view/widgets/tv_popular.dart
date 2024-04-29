import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:movies_tv_app/tv/peresentation/view/widgets/tv_popular_bloc.dart';

class TvPopular extends StatelessWidget {
  const TvPopular({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          Row(
            children: [
              const Text(
                'Popular',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
              const Spacer(),
              Row(
                children: [
                  GestureDetector(
                    
                    child: const Text(
                      'see more',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  
                     const Icon(
                      FontAwesomeIcons.arrowRight,
                      color: Colors.white,
                    ),
                  
                ],
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const TvPopularBloc()
        ],
      ),
    );
  }
}
