import 'package:flutter/material.dart';
import 'package:movies_tv_app/tv/peresentation/view/widgets/tv_onair_list.dart';
import 'package:movies_tv_app/tv/peresentation/view/widgets/tv_popular.dart';
import 'package:movies_tv_app/tv/peresentation/view/widgets/tv_toprated.dart';

class TvBodyView extends StatelessWidget{
  const TvBodyView({super.key});

  @override
  Widget build(BuildContext context) {
   return const SingleChildScrollView(
      child:  Column(
        children: [
          TvOnAirBloc(),
          SizedBox(
            height: 30,
          ),
          TvPopular(),
          SizedBox(height: 40,),
          TopRatedTv()
        ],
      ),
    );
  }

}