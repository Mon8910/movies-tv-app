import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:movies_tv_app/movies/presentation/view/widgets/see_more_toprated.dart';
import 'package:movies_tv_app/tv/peresentation/view/widgets/tv_toprated_bloc.dart';

class TopRatedTv extends StatelessWidget {
  const TopRatedTv({super.key});
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'TopRated',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
              Spacer(),
              InkWell(
                
                child: Row(
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
          SizedBox(
            height: 20,
          ),
          TvTopRatedBloc(),
          SizedBox(height: 30,)
        ],
      ),
    );
  }
}
