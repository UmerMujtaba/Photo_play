import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:photoplay/components/bottom_bar.dart';
import 'package:photoplay/components/star_component.dart';

import '../components/main_movies_card.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  ShaderMask(
                    shaderCallback: (bounds) => LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.black.withOpacity(0.2),
                        Colors.black.withOpacity(0.2),
                      ],
                    ).createShader(bounds),
                    blendMode: BlendMode.srcATop,
                    child: SizedBox(
                      height: 550,
                      child: InkWell(
                        onTap: () {
                          Navigator.pushReplacementNamed(context, '/detail');
                        },
                        child: const Image(
                          image: AssetImage('assets/movies/dora.jpg'),
                          fit: BoxFit.fill,
                          width: double.maxFinite,
                          height: double.maxFinite,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const Text(
                '4.0',
                style: TextStyle(color: Colors.white, fontSize: 34),
              ),
              const StarComponent(),
              const Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      'Movie',
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                    Text(
                      '|',
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                    Text(
                      ' Adventure',
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                    Text(
                      '|',
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                    Text(
                      ' Comedy',
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                    Text(
                      '|',
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                    Text(
                      'Family',
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                  ],
                ),
              ),
              //SizedBox(height: 10),
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: Row(
                  children: <Widget>[
                    Text(
                      'Watching',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                  ],
                ),
              ),
              const MainMoviesCard(),
            ],
          ),
        ),
        bottomNavigationBar: const bar(),
      ),
    );
  }
}
