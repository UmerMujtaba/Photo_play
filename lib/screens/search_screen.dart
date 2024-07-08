import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import '../model/movie.dart';

import '../api/api.dart';
import '../cosntants.dart';
import '../model/tvSeries.dart';
import 'TvSeriesDetailScreen.dart';
import 'movie_detail_screen.dart';
import '../screens/TvSeriesDetailScreen.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController _searchController = TextEditingController();
  List<Movie> _searchResultsMovies = [];
  List<Movie> _allMovies = [];
  List<Tvseries> _searchResultsSeries = [];
  List<Tvseries> _allSeries = [];

  @override
  void initState() {
    super.initState();
    _fetchData();
  }

  Future<void> _fetchData() async {
    try {
      final movies = await Api().getTrendingMovies(); // Change this to fetch other movie lists if needed
      final series = await Api().getTrendingSeries(); // Fetch TV series
      setState(() {
        _allMovies = movies;
        _searchResultsMovies = movies;
        _allSeries = series;
        _searchResultsSeries = series;
      });
    } catch (e) {
      print('Failed to load data: $e');
    }
  }

  void _onSearchChanged() {
    final query = _searchController.text.toLowerCase();
    setState(() {
      _searchResultsMovies = _allMovies.where((movie) {
        final movieTitle = movie.title.toLowerCase();
        return movieTitle.contains(query);
      }).toList();
      _searchResultsSeries = _allSeries.where((series) {
        final seriesTitle = series.name.toLowerCase();
        return seriesTitle.contains(query);
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search'),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              controller: _searchController,
              onChanged: (value) => _onSearchChanged(),
              decoration: InputDecoration(
                hintText: 'Search...',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: _searchResultsMovies.isEmpty && _searchResultsSeries.isEmpty
                  ? const Center(child: Text('No results found.'))
                  : ListView(
                children: [
                  if (_searchResultsMovies.isNotEmpty)
                    ..._searchResultsMovies.map((movie) => ListTile(
                      leading: Image.network(
                        '${Constants.imagePath}${movie.posterPath}',
                        fit: BoxFit.cover,
                        width: 50,
                      ),
                      title: Text(movie.title),
                      subtitle: Text(movie.releaseDate ?? ''),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MovieDetailScreen(movie: movie),
                          ),
                        );
                      },
                    )),
                  if (_searchResultsSeries.isNotEmpty)
                    ..._searchResultsSeries.map((series) => ListTile(
                      leading: Image.network(
                        '${Constants.imagePath}${series.posterPath}',
                        fit: BoxFit.cover,
                        width: 50,
                      ),
                      title: Text(series.name),
                      subtitle: Text(series.firstAirDate),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => TvSeriesDetailScreen(series: series),
                          ),
                        );
                      },
                    )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
