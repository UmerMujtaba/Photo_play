import 'package:flutter/material.dart';
import 'package:photoplay/components/bottom_bar.dart';
import 'package:photoplay/components/star_component.dart';

import '../components/button.dart';
import '../components/movie_details_actor_cards.dart';
import 'actor_screen.dart';

class MovieDetailScreen extends StatefulWidget {
  const MovieDetailScreen({Key? key}) : super(key: key);

  @override
  State<MovieDetailScreen> createState() => _MovieDetailScreenState();
}

class _MovieDetailScreenState extends State<MovieDetailScreen> {
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
                          Colors.black.withOpacity(1),
                          Colors.black.withOpacity(0.2),
                        ],
                      ).createShader(bounds),
                      blendMode: BlendMode.srcATop,
                      child: SizedBox(
                        height: 300,
                        child: InkWell(
                          onTap: () {
                            Navigator.pushReplacementNamed(context, '/detail');
                          },
                          child: const Image(
                            image: AssetImage('assets/movies/doraback1.jpg'),
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
                    const Positioned(
                      bottom: 16,
                      left: 16,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Dora and the lost city of gold',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                            ),
                          ),
                          SizedBox(height: 8),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Movie',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 14),
                              ),
                              SizedBox(width: 4),
                              Text(
                                '|',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 14),
                              ),
                              SizedBox(width: 4),
                              Text(
                                'Adventure',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 14),
                              ),
                              SizedBox(width: 4),
                              Text(
                                '|',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 14),
                              ),
                              SizedBox(width: 4),
                              Text(
                                'Comedy',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 14),
                              ),
                              SizedBox(width: 4),
                              Text(
                                '|',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 14),
                              ),
                              SizedBox(width: 4),
                              Text(
                                'Family',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 14),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const Text(
                  '4.0',
                  style: TextStyle(color: Colors.white, fontSize: 34),
                ),
                const StarComponent(),
                const Text(
                    'Having spent most of her life exploring the jungle, '
                    'nothing could prepare Dora for her most dangerous adventure yet - high school.',
                    style: TextStyle(
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
                ActorCards(onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const ActorDetailScreen()));
                },),
              ],
            ),
          ),
        ),
        bottomNavigationBar: const bar(),
      ),
    );
  }
}
