import 'package:flutter/material.dart';
import 'package:photoplay/model/movie.dart';
import 'package:photoplay/model/tvSeries.dart';

class FavoritesProvider with ChangeNotifier {
  final List<Movie> _favoriteMovies = [];
  final List<Tvseries> _favoriteSeries = [];

  List<Movie> get favoriteMovies => _favoriteMovies;
  List<Tvseries> get favoriteSeries => _favoriteSeries;

  void toggleFavorite(dynamic item) {
    if (item is Movie) {
      if (_favoriteMovies.contains(item)) {
        _favoriteMovies.remove(item);
      } else {
        _favoriteMovies.add(item);
      }
    } else if (item is Tvseries) {
      if (_favoriteSeries.contains(item)) {
        _favoriteSeries.remove(item);
      } else {
        _favoriteSeries.add(item);
      }
    }
    notifyListeners();
  }
}
