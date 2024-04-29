import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_tv_app/tv/peresentation/data/model/tv_model.dart';
import 'package:movies_tv_app/tv/peresentation/manager/cubit/tvonair_cubit.dart';
import 'package:movies_tv_app/tv/peresentation/view/widgets/tv_onair_items.dart';

class TvOnAirBloc extends StatelessWidget {
  const TvOnAirBloc({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TvonairCubit, TvonairState>(
      builder: (context, state) {
        if(state is TvonairSuccess){
         return TvOnAirListView(tv: state.tv,);
        }
        
        else {
          return CircularProgressIndicator();
        }
      },
    );
  }
}

class TvOnAirListView extends StatelessWidget{
  const TvOnAirListView({super.key, required this.tv});
  final List<TvModel> tv;

  @override
  Widget build(BuildContext context) {
   return SizedBox(
          height: MediaQuery.of(context).size.height * .35,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: tv.length,
            itemBuilder: (context, index) {
              return  TvOnAirItems(text:tv[index].title! , image: tv[index].image??'',);
            },
          ),
        );
  }

}
