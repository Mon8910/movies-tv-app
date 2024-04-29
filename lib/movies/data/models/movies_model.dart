class MoviesModel {
  final String? image;
  final String title;
  final int id;
  final double? voteAgerage;
  final String details;

  MoviesModel({
    required this.image,
    required this.title,
    required this.id,
    required this.voteAgerage,
    required this.details,
  });
  factory MoviesModel.fromJson(Map<String, dynamic> json) {
    return MoviesModel(
      image: json['backdrop_path']  ,
      title: json['original_title'],
      id: json['id'],
      voteAgerage: json['vote_average'],
      details: json['overview'],
    );
  }
}
