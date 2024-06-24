import 'package:flutter/material.dart';

class MainMoviesCard extends StatelessWidget {
  const MainMoviesCard({Key? key}) : super(key: key);

  final List<Map<String, String>> movies = const [
    {'image': 'assets/movies/narcos.jfif', 'name': 'Narcos'},
    {'image': 'assets/movies/deadpool.jfif', 'name': 'Deadpool'},
    {'image': 'assets/movies/annabel.jfif', 'name': 'Annabel'},
    {'image': 'assets/movies/chernobyl.jfif', 'name': 'Chernobyl'},
    {'image': 'assets/movies/dark.jfif', 'name': 'Dark'},
    {'image': 'assets/movies/friend.jfif', 'name': 'Friends'},
    {'image': 'assets/movies/ghost.jfif', 'name': 'Ghost Rider'},
    {'image': 'assets/movies/grey.jfif', 'name': 'Fifty Shades of Grey'},
    {'image': 'assets/movies/knight.jfif', 'name': 'Knight & Day'},
    {'image': 'assets/movies/mission.jfif', 'name': 'Mission Impossible'},
    {'image': 'assets/movies/money.jfif', 'name': 'Money Heist'},
    {'image': 'assets/movies/peaky.jfif', 'name': 'Peaky Blinder'},
    {'image': 'assets/movies/viking.jfif', 'name': 'Vikings'},
  ];

  @override
  Widget build(BuildContext context) {
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
                    style: const TextStyle(color: Colors.white),
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
