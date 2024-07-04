import 'package:flutter/material.dart';

import '../components/bottom_bar.dart';
import '../components/button.dart';
import '../components/actor_movie_cards.dart';
import '../components/star_component.dart';

class MovieDetailScreen extends StatelessWidget {
  final String name;
  final String rate;
  final String description;
  final String imageURL;
  final List<String> genres;
  final List<Map<String, String>> actors;

  const MovieDetailScreen(
      {Key? key,
      required this.name,
      required this.rate,
      required this.description,
      required this.imageURL,
      required this.genres,
      required this.actors})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                Stack(
                  alignment: Alignment.topLeft,
                  children: [
                    ShaderMask(
                      shaderCallback: (bounds) => LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.black.withOpacity(0.7),
                          Colors.black.withOpacity(0.2),
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
                            child: const Icon(
                              Icons.arrow_back_ios,
                              color: Colors.white,
                              size: 20,
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
                            style: const TextStyle(
                                color: Colors.white,
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
                                        style: const TextStyle(
                                            color: Colors.white, fontSize: 14),
                                      ),
                                      const SizedBox(width: 4),
                                      const Text(
                                        '|',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 14),
                                      ),
                                      const SizedBox(width: 4),
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
                SizedBox(height: 20),
                Text(
                  rate,
                  style: const TextStyle(color: Colors.white, fontSize: 34),
                ),
                const StarComponent(),
                Text(description,
                    style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                    textAlign: TextAlign.start),
                const SizedBox(height: 20),
                CustomButton(
                  text: 'Watch Now',
                  height: 44.0,
                  padding: const EdgeInsets.fromLTRB(40, 10, 40, 10),
                  onPressed: () {
                    // Add your action here
                  },
                ),
                const Row(
                  children: [
                    Text(
                      'Cast',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                ActorCards(actors: actors),
              ],
            ),
          ),
        ),
        bottomNavigationBar: const bar(),
      ),
    );
  }
}
