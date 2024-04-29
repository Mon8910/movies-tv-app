class MoviesDetailsModel {
  final String? image;
  final String? title;
  final String? details;
  final String? relaseDate;
  final num? runTime;
  final num? overview;
 

  MoviesDetailsModel({
    required this.image,
    required this.title,
    required this.details,
    required this.relaseDate,
    required this.runTime,
    required this.overview,
    
  });
  factory MoviesDetailsModel.fromJson(Map<String, dynamic> json) {
    return MoviesDetailsModel(
      image: json['backdrop_path'],
      title: json['original_title'],
      details: json['overview'],
      relaseDate: json['release_date'],
      runTime: json['runtime'],
      overview: json['vote_average'],
 
    );
  }
}
