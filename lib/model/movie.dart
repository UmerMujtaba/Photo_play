class Movie {
  String title;
  String backDropPath;
  String originalTitle;
  String overview;
  String posterPath;
  String releaseDate;
  double voteAverage;

  Movie({
    required this.posterPath,
    required this.originalTitle,
    required this.title,
    required this.overview,
    required this.releaseDate,
    required this.voteAverage,
    required this.backDropPath,
  });

  factory Movie.fromJson(Map<String, dynamic> json){
    return Movie(
      posterPath: json['poster_path'],
      originalTitle: json['original_title'],
      title: json['title'],
      overview: json['overview'],
      releaseDate: json['release_date'],
      voteAverage: json['vote_average'],
      backDropPath: json['backdrop_path'],
    );
  }

}
