import 'package:movies_tv_app/core/api/api_consumer.dart';
import 'package:movies_tv_app/tv/peresentation/data/model/tv_model.dart';

class TvTpRatedRepo {
  final ApiConsumer apiConsumer;

  TvTpRatedRepo({required this.apiConsumer});
  Future<List<TvModel>> tvTopRatedRepo()async{
    final response=await apiConsumer.get('tv/top_rated?api_key=831155179cb3dae7bdf256801f661106');
    final List<TvModel> tv=[];
    for(var tvList in response['results']){
      tv.add(TvModel.fromJson(tvList));
    }
    return tv;
  }
}