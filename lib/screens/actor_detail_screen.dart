import 'package:flutter/material.dart';

import '../components/actor_details_movie_cards.dart';
import '../components/bottom_bar.dart';

class ActorDetailScreen extends StatelessWidget {
  final String actorName;
  final String actorImage;
  final String actorDescription;

  const ActorDetailScreen({
    Key? key,
    required this.actorName,
    required this.actorImage,
    required this.actorDescription,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
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
                          Colors.black.withOpacity(0.5),
                          Colors.black.withOpacity(0.5),
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
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                            ),
                          ),

                        ],
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 2),
                Text(
                  actorName.split(' ')[1],
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  actorDescription,
                  style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),
                const Row(
                  children: [
                    Text(
                      'Known for',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                const ActorMovieCards(),
              ],
            ),
          ),
        ),
        bottomNavigationBar: const bar(),
      ),
    );
  }
}
