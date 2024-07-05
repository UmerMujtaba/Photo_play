import 'package:flutter/material.dart';
import 'package:photoplay/screens/watch_now_screen.dart';
import 'package:provider/provider.dart';

import '../components/bottom_bar.dart';
import '../components/button_component.dart';
import '../components/actor_movie_cards.dart';
import '../components/star_component.dart';
import '../provider/theme_provider.dart';

class MovieDetailScreen extends StatelessWidget {
  final String name;
  final String rate;
  final String description;
  final String imageURL;
  final String bgImgURL;
  final List<String> genres;
  final List<Map<String, String>> actors;

  const MovieDetailScreen(
      {super.key,
      required this.name,
      required this.rate,
      required this.description,
      required this.imageURL,
      required this.genres,
      required this.actors,
      required this.bgImgURL});

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;
    final themeProvider = Provider.of<ThemeProvider>(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: isDarkMode ? Colors.black : Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Stack(
                alignment: Alignment.topLeft,
                children: [
                  ShaderMask(
                    shaderCallback: (bounds) => LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: isDarkMode
                          ? [
                              Colors.black.withOpacity(0.2),
                              Colors.black.withOpacity(0.9),
                            ]
                          : [
                              Colors.white.withOpacity(0),
                              Colors.white.withOpacity(1),
                            ],
                    ).createShader(bounds),
                    blendMode: BlendMode.srcATop,
                    child: SizedBox(
                      height: 300,
                      child: InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/detail');
                        },
                        child: Image.network(
                          imageURL,
                          fit: BoxFit.fill,
                          width: double.maxFinite,
                          height: 300,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: <Widget>[
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: IconButton(
                            icon: const Icon(
                              Icons.arrow_back_ios,
                              size: 20,
                            ),
                            color: Colors.white,
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ),
                        const SizedBox(width: 10),
                        const Text(
                          'Back',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 16,
                    left: 16,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          name,
                          style: TextStyle(
                              color: isDarkMode ? Colors.white : Colors.black,
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 8),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: genres
                              .expand((genre) => [
                                    Text(
                                      genre,
                                      style: TextStyle(
                                          color: isDarkMode
                                              ? Colors.white
                                              : Colors.black,
                                          fontSize: 14),
                                    ),
                                    const SizedBox(width: 15),
                                    Text(
                                      '|',
                                      style: TextStyle(
                                          color: isDarkMode
                                              ? Colors.white
                                              : Colors.black,
                                          fontSize: 14),
                                    ),
                                    const SizedBox(width: 15),
                                  ])
                              .toList()
                            ..removeLast()
                            ..removeLast(), // Remove the last '|'
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text(
                      rate,
                      style: TextStyle(
                          color: isDarkMode ? Colors.white : Colors.black,
                          fontSize: 34),
                    ),
                    const StarComponent(),
                    Text(description,
                        style: TextStyle(
                          color: isDarkMode ? Colors.grey : Colors.black,
                          fontSize: 14,
                        ),
                        textAlign: TextAlign.start),
                    const SizedBox(height: 20),
                    CustomButton(
                      text: 'Watch Now',
                      height: 44.0,
                      padding: const EdgeInsets.fromLTRB(40, 10, 40, 10),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => WatchNowScreen(
                              movieWatch: name,
                              ratingWatch: rate,
                              descriptionWatch: description,
                              genresWatch: genres,
                              backgroundImageURLWatch: bgImgURL,
                            ),
                          ),
                        );
                      },
                    ),
                    Row(
                      children: [
                        Text(
                          'Cast',
                          style: TextStyle(
                              color: isDarkMode ? Colors.white : Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    ActorCards(actors: actors),
                  ],
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
