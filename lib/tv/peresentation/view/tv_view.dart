import 'package:flutter/material.dart';
import 'package:movies_tv_app/tv/peresentation/view/widgets/tv_body_view.dart';
class TvView extends StatelessWidget{
  const TvView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
       backgroundColor: Color.fromARGB(193, 55, 54, 66),
      body: TvBodyView(),
    );
  }

}