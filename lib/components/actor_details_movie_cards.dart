import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/theme_provider.dart';

class ActorMovieCards extends StatelessWidget {
  const ActorMovieCards({super.key});

  final List<Map<String, String>> movies = const [
    {'image': 'assets/movies/12strong.jfif', 'name': '12 Strong'},
    {'image': 'assets/movies/antman.jfif', 'name': 'Antman'},
    {'image': 'assets/movies/fantasy.jfif', 'name': 'Fantasy Island'},
    {'image': 'assets/movies/thevatican.jfif', 'name': 'The Vatican Tape'},
    {'image': 'assets/movies/antmanwasp.jfif', 'name': 'Antman & Wasp'},

  ];

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Padding(
      padding: const EdgeInsets.all(10),
      child: SizedBox(
        height: 200, // Adjust height as needed
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: movies.length,
          itemBuilder: (context, index) {
            final movie = movies[index];
            return Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Column(
                children: <Widget>[
                  Card(
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: SizedBox(
                      width: 100,
                      height: 150,
                      child: Image(
                        image: AssetImage(movie['image']!),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    movie['name']!,
                    style:  TextStyle(color: isDarkMode ? Colors.white : Colors.black,),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
