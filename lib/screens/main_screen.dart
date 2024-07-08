import 'package:flutter/material.dart';
import 'package:photoplay/api/api.dart';
import 'package:photoplay/components/bottom_bar.dart';
import 'package:photoplay/model/tvSeries.dart';
import 'package:photoplay/widgets/TvSeries_slider.dart';
import 'package:photoplay/widgets/main_above_trending.dart';
import 'package:photoplay/widgets/top_rated_movies.dart';
import 'package:provider/provider.dart';

import '../widgets/trending_movies_slider.dart';
import '../model/movie.dart';
import '../provider/theme_provider.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late Future<List<Movie>> trendingMovies;
  late Future<List<Movie>> topRatedMovies;
  late Future<List<Movie>> upComingMovies;
  late Future<List<Movie>> nowPlayingMovies;
  late Future<List<Tvseries>> topRatedTVSeries;
  late Future<List<Tvseries>> trendingTVSeries;

  @override
  void initState() {
    super.initState();
    trendingMovies = Api().getTrendingMovies();
    topRatedMovies = Api().getTopRatedMovies();
    upComingMovies = Api().getUpcomingMovies();
    nowPlayingMovies = Api().getNowPlayingMovies();

    topRatedTVSeries = Api().getTopRatedSeries();
    trendingTVSeries = Api().getTrendingSeries();
  }

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;
    final themeProvider = Provider.of<ThemeProvider>(context);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 5,
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.arrow_back_ios),
            color: isDarkMode ? Colors.white : Colors.black,
          ),
          title: const Image(
            image: AssetImage('assets/PHOTO.png'),
            fit: BoxFit.cover,
            height: 180,
            filterQuality: FilterQuality.high,
          ),
          centerTitle: true,
        ),
        backgroundColor: isDarkMode ? Colors.black : Colors.white,
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              const MainAboveTrending(),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: <Widget>[
                    Text(
                      'Now playing',
                      style: TextStyle(
                          color: isDarkMode ? Colors.white : Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ],
                ),
              ),
              SizedBox(
                child: FutureBuilder(
                  future: nowPlayingMovies,
                  builder: (context, snapshot) {
                    if (snapshot.hasError) {
                      return Center(
                        child: Text(snapshot.error.toString()),
                      );
                    } else if (snapshot.hasData) {
                      final data = snapshot.data;

                      return TrendingMovies(
                        snapshot: snapshot,
                      );
                    } else {
                      return Center(
                        child: Text(snapshot.error.toString()),
                      );
                    }
                  },
                ),
              ),
              const SizedBox(height: 32),
              Row(
                children: [
                  Text(
                    'Trending Movies',
                    style: TextStyle(
                      color: isDarkMode ? Colors.white : Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 32),
              SizedBox(
                child: FutureBuilder(
                  future: trendingMovies,
                  builder: (context, snapshot) {
                    if (snapshot.hasError) {
                      return Center(
                        child: Text(snapshot.error.toString()),
                      );
                    } else if (snapshot.hasData) {
                      final data = snapshot.data;
                      // print('&&&&&&&&&&&&&&${data}');
                      return TopRatedMovies(
                        snapshot: snapshot,
                      );
                    } else {
                      return Center(
                        child: Text(snapshot.error.toString()),
                      );
                    }
                  },
                ),
              ),
              const SizedBox(height: 32),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      'Upcoming Movies',
                      style: TextStyle(
                        color: isDarkMode ? Colors.white : Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                child: FutureBuilder(
                  future: upComingMovies,
                  builder: (context, snapshot) {
                    if (snapshot.hasError) {
                      return Center(
                        child: Text(snapshot.error.toString()),
                      );
                    } else if (snapshot.hasData) {
                      final data = snapshot.data;
                      return TopRatedMovies(
                        snapshot: snapshot,
                      );
                    } else {
                      return Center(
                        child: Text(snapshot.error.toString()),
                      );
                    }
                  },
                ),
              ),
              const SizedBox(height: 32),
              Row(
                children: [
                  Text(
                    'Top rated Movies',
                    style: TextStyle(
                      color: isDarkMode ? Colors.white : Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              SizedBox(
                child: FutureBuilder(
                  future: topRatedMovies,
                  builder: (context, snapshot) {
                    if (snapshot.hasError) {
                      return Center(
                        child: Text(snapshot.error.toString()),
                      );
                    } else if (snapshot.hasData) {
                      final data = snapshot.data;
                      return TopRatedMovies(
                        snapshot: snapshot,
                      );
                    } else {
                      return Center(
                        child: Text(snapshot.error.toString()),
                      );
                    }
                  },
                ),
              ),
              const SizedBox(height: 32),
              Row(
                children: [
                  Text(
                    'Top rated TV Series',
                    style: TextStyle(
                      color: isDarkMode ? Colors.white : Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              SizedBox(
                child: FutureBuilder(
                  future: topRatedTVSeries,
                  builder: (context, snapshot) {
                    if (snapshot.hasError) {
                      return Center(
                        child: Text(snapshot.error.toString()),
                      );
                    } else if (snapshot.hasData) {
                      final data = snapshot.data;
                      return TopAndTrendingTvSeries(
                        snapshot: snapshot,
                      );
                    } else {
                      return Center(
                        child: Text(snapshot.error.toString()),
                      );
                    }
                  },
                ),
              ),
              const SizedBox(height: 32),
              Row(
                children: [
                  Text(
                    'Trending TV Series',
                    style: TextStyle(
                      color: isDarkMode ? Colors.white : Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              SizedBox(
                child: FutureBuilder(
                  future: trendingTVSeries,
                  builder: (context, snapshot) {
                    if (snapshot.hasError) {
                      return Center(
                        child: Text(snapshot.error.toString()),
                      );
                    } else if (snapshot.hasData) {
                      final data = snapshot.data;
                      return TopAndTrendingTvSeries(
                        snapshot: snapshot,
                      );
                    } else {
                      return Center(
                        child: Text(snapshot.error.toString()),
                      );
                    }
                  },
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: const bar(),
      ),
    );
  }
}
