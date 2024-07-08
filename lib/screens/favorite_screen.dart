import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../cosntants.dart';
import '../model/data.dart';
import '../provider/favorite_provider.dart';
import '../provider/theme_provider.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'TvSeriesDetailScreen.dart';
import 'movie_detail_screen.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final favoritesProvider = Provider.of<FavoritesProvider>(context);
    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      appBar: AppBar(
        title: Text('Favorites'),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios, color: Colors.white),
        ),
      ),
      body: ListView(
        children: [
          ...favoritesProvider.favoriteMovies.map((movie) => ListTile(
                leading: Image.network(
                  '${Constants.imagePath}${movie.posterPath}',
                  fit: BoxFit.cover,
                  width: 50,
                ),
                title: Text(movie.title),
                subtitle: Text(movie.releaseDate ?? ''),
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MovieDetailScreen(movie: movie),
                  ),
                ),
              )),
          ...favoritesProvider.favoriteSeries.map((series) => ListTile(
                title: Text(series.name),
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TvSeriesDetailScreen(series: series),
                  ),
                ),
              )),
        ],
      ),
    );
  }
}

/*ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: movies2.length,
                  itemBuilder: (context, index) {
                    final movie = movies2[index];
                    return Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Row(
                            children: [
                              Card(
                                elevation: 10,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: SizedBox(
                                  width: 130,
                                  height: 100,
                                  child: movie['image']!.startsWith('http')
                                      ? Image.network(
                                          movie['image']!,
                                          fit: BoxFit.fill,
                                        )
                                      : Image.asset(
                                          movie['image']!,
                                          fit: BoxFit.fill,
                                        ),
                                ),
                              ),
                              const SizedBox(width: 20),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      movie['name']!,
                                      style: TextStyle(
                                          color: isDarkMode
                                              ? Colors.white
                                              : Colors.black,
                                          fontSize: 16),
                                    ),
                                    const SizedBox(height: 2),
                                    Row(
                                      children: [
                                        if (movie['episode']!.isNotEmpty)
                                          Text(
                                            ' ${movie['episode']!} Episodes',
                                            style: TextStyle(
                                                color: isDarkMode
                                                    ? Colors.grey
                                                    : Colors.black,
                                                fontSize: 12),
                                          ),
                                        if (movie['episode']!.isNotEmpty)
                                          const SizedBox(width: 5),
                                        if (movie['episode']!.isNotEmpty)
                                          Text('|',
                                              style: TextStyle(
                                                  color: isDarkMode
                                                      ? Colors.grey
                                                      : Colors.black,
                                                  fontSize: 14)),
                                        if (movie['episode']!.isNotEmpty)
                                          const SizedBox(width: 5),
                                        Text(
                                          movie['size']!,
                                          style: TextStyle(
                                              color: isDarkMode
                                                  ? Colors.grey
                                                  : Colors.black,
                                              fontSize: 14),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        // const Divider(color: Colors.white,height: 1,),
                      ],
                    );
                  },
                ),*/
