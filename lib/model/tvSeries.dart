class Tvseries {
  String name;
  String originalName;
  String? backDropPath;
  String overview;
  String? posterPath;
  double voteAverage;
  String firstAirDate;
  bool isFavorite;

  Tvseries({
    required this.name,
    this.backDropPath,
    required this.originalName,
    required this.overview,
    this.posterPath,
    required this.voteAverage,
    required this.firstAirDate,
    this.isFavorite = false,
  });

  factory Tvseries.fromJson(Map<String, dynamic> json) {
    return Tvseries(
      name: json['name'] ?? '',
      originalName: json['original_name'] ?? '',
      backDropPath: json['backdrop_path'] ?? '',
      voteAverage: (json['vote_average'] as num).toDouble(),
      overview: json['overview'] ?? '',
      posterPath: json['poster_path']?? '',firstAirDate: json['first_air_date'] ?? '',
    );
  }
}
