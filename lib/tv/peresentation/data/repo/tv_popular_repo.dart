import 'package:movies_tv_app/core/api/api_consumer.dart';
import 'package:movies_tv_app/tv/peresentation/data/model/tv_model.dart';

class TvPopularRepo{
  final ApiConsumer apiConsumer;

  TvPopularRepo({required this.apiConsumer});
  Future<List<TvModel>> tvPopularRepo ()async{
    final response= await apiConsumer.get('tv/popular?api_key=831155179cb3dae7bdf256801f661106');
    final List<TvModel> tv=[];
    for(var tvList in response['results']){
      tv.add(TvModel.fromJson(tvList));
    }
    return tv;

  }

}