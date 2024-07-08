import 'dart:convert';

import 'package:photoplay/model/data.dart';
import 'package:photoplay/model/tvSeries.dart';

import '../cosntants.dart';
import 'package:http/http.dart' as http;

import '../model/movie.dart';

class Api {
  static const _nowPlayingUrl =
      'https://api.themoviedb.org/3/movie/now_playing?api_key=${Constants.apiKey}';
  static const _trendingUrl =
      'https://api.themoviedb.org/3/trending/movie/day?api_key=${Constants.apiKey}';
  static const _topRatedUrl =
      'https://api.themoviedb.org/3/movie/top_rated?api_key=${Constants.apiKey}';
  static const _upComingUrl =
      'https://api.themoviedb.org/3/movie/upcoming?api_key=${Constants.apiKey}';

  static const _topRatedSeriesUrl =
      'https://api.themoviedb.org/3/tv/top_rated?api_key=${Constants.apiKey}';
  static const _trendingSeriesUrl =
      'https://api.themoviedb.org/3/trending/tv/week?api_key=${Constants.apiKey}';

  Future<List<Movie>> getTrendingMovies() async {
    final response = await http.get(Uri.parse(_trendingUrl));

    if (response.statusCode == 200) {
      final decodedData = json.decode(response.body)['results'] as List;
     // print(decodedData);
      return decodedData.map((movie) => Movie.fromJson(movie)).toList();
    } else
      throw Exception('**Something went wrong for trending url movie**');
  }

  Future<List<Movie>> getTopRatedMovies() async {
    final response = await http.get(Uri.parse(_topRatedUrl));

    if (response.statusCode == 200) {
      final decodedData = json.decode(response.body)['results'] as List;
      // print(decodedData);
      return decodedData.map((movie) => Movie.fromJson(movie)).toList();
    } else
      throw Exception('**Something went wrong for top rated url movie**');
  }

  Future<List<Movie>> getUpcomingMovies() async {
    final response = await http.get(Uri.parse(_upComingUrl));

    if (response.statusCode == 200) {
      final decodedData = json.decode(response.body)['results'] as List;
      // print(decodedData);
      return decodedData.map((movie) => Movie.fromJson(movie)).toList();
    } else
      throw Exception('**Something went wrong for up coming url movie**');
  }



  Future<List<Movie>> getNowPlayingMovies() async {
    print('*********i am in NPTRENDING*****8');
    final response = await http.get(Uri.parse(_nowPlayingUrl));

    if (response.statusCode == 200) {
      final decodedData = json.decode(response.body)['results'] as List;
      //print(decodedData);
      return decodedData.map((movie) => Movie.fromJson(movie)).toList();
    } else
      throw Exception('**Something went wrong for Now playing url movie**');
  }


  Future<List<Tvseries>> getTopRatedSeries() async {
    final response = await http.get(Uri.parse(_topRatedSeriesUrl));

    if (response.statusCode == 200) {
      final decodedData = json.decode(response.body)['results'] as List;
      print(decodedData);
      return decodedData.map((tv) => Tvseries.fromJson(tv)).toList();
    } else
      throw Exception('**Something went wrong for Top rated series url movie**');
  }


  Future<List<Tvseries>> getTrendingSeries() async {
    final response = await http.get(Uri.parse(_trendingSeriesUrl));

    if (response.statusCode == 200) {
      final decodedData = json.decode(response.body)['results'] as List;
      // print(decodedData);
      return decodedData.map((tv) => Tvseries.fromJson(tv)).toList();
    } else
      throw Exception('**Something went wrong for trending series url movie**');
  }
}
