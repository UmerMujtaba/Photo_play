import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'actor_details_movie_cards.dart';
import '../components/bottom_bar.dart';
import '../provider/theme_provider.dart';

class ActorDetailScreen extends StatelessWidget {
  final String actorName;
  final String actorImage;
  final String actorDescription;

  const ActorDetailScreen({
    super.key,
    required this.actorName,
    required this.actorImage,
    required this.actorDescription,
  });

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
                    child: Center(
                      child: Image.asset(
                        actorImage,
                        fit: BoxFit.fill,
                        width: double.maxFinite,
                        height: 400,
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
                          child: const Icon(
                            Icons.arrow_back_ios,
                            color: Colors.white,
                            size: 18,
                          ),
                        ),
                        const SizedBox(width: 10),
                        const Text(
                          'Back',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 20,
                    left: 0,
                    right: 0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          actorName.split(' ')[0],
                          style: TextStyle(
                            color: isDarkMode ? Colors.white : Colors.black,
                            fontSize: 30,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(height: 2),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text(
                      actorName.split(' ')[1],
                      style: TextStyle(
                        color: isDarkMode ? Colors.white : Colors.black,
                        fontSize: 22,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      actorDescription,
                      style: TextStyle(
                        color: isDarkMode ? Colors.grey : Colors.black,
                        fontSize: 14,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        Text(
                          'Known for',
                          style: TextStyle(
                              color: isDarkMode ? Colors.white : Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    const ActorMovieCards(),
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
