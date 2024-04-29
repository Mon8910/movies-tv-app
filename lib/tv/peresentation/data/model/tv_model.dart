class TvModel {
  final int id;
  final String? title;
  final String? image;
  final num? rating;
  final String? details;

  TvModel({
    required this.id,
    required this.title,
    required this.image,
    required this.rating,
    required this.details,
  });
  factory TvModel.fromJson(Map<String, dynamic> json) {
    return TvModel(
      id: json['id'],
      title: json['original_name'],
      image: json['backdrop_path'],
      rating: json['vote_average'],
      details: json['overview'],
    );
  }
}
