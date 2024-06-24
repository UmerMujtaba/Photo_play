import 'package:flutter/material.dart';

import '../components/actor_details_movie_cards.dart';
import '../components/bottom_bar.dart';

class ActorDetailScreen extends StatefulWidget {
  const ActorDetailScreen({Key? key}) : super(key: key);

  @override
  State<ActorDetailScreen> createState() => _ActorDetailScreenState();
}

class _ActorDetailScreenState extends State<ActorDetailScreen> {

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
                          Colors.black.withOpacity(0.6),
                          Colors.black.withOpacity(0.2),
                        ],
                      ).createShader(bounds),
                      blendMode: BlendMode.srcATop,
                      child: const Center(
                        child: ClipOval(
                          child: Image(
                            image: AssetImage('assets/actor/mihceal2.png'),
                            fit: BoxFit.fill,
                            width: 300.0, // specify a width
                            height: 400.0, // specify a height
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
                    const Positioned(
                      bottom: 20,
                      left: 0,
                      right: 0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Michael',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                            ),
                          ),
                          SizedBox(height: 2),
                          Text(
                            'Pena',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 20),
                const Text(
                    'Micheal pena was born and raised in Chicago, to Nicolasa, a social worker, and Eleuterio Pena, who worked '
                        'at button factory. His parents were originally from Mexico',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                    textAlign: TextAlign.start),
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
