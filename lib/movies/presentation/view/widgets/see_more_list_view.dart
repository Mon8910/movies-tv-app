import 'package:flutter/material.dart';
import 'package:movies_tv_app/movies/presentation/view/widgets/see_more_popular_listview_builder.dart';

class SeeMoreListView extends StatelessWidget {
  const SeeMoreListView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: const Color.fromARGB(193, 55, 54, 66),
          title: const Text(
            'popular',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        backgroundColor: const Color.fromARGB(193, 55, 54, 66),
        body:const SeeMorePopularListViewBuilder() );
  }
}

