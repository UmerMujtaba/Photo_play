class Movie {
  final String title;
  final String? backDropPath; // Nullable type
  final String originalTitle;
  final String overview;
  final String? posterPath; // Nullable type
  final String releaseDate;
  final double voteAverage;

  Movie({
    required this.title,
    this.backDropPath,
    required this.originalTitle,
    required this.overview,
    this.posterPath,
    required this.releaseDate,
    required this.voteAverage,
  });

  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
      title: json['title'] ?? '', // Provide default value
      backDropPath: json['backdrop_path'], // Nullable
      originalTitle: json['original_title'] ?? '', // Provide default value
      overview: json['overview'] ?? '', // Provide default value
      posterPath: json['poster_path'], // Nullable
      releaseDate: json['release_date'] ?? '', // Provide default value
      voteAverage: (json['vote_average'] as num).toDouble(), // Ensure it's a double
    );
  }
}
