import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/theme_provider.dart';
import '../no_use/actor_detail_screen.dart';

class ActorCards extends StatelessWidget {

  final List<Map<String, String>> actors;

  const ActorCards({super.key, required this.actors});


  @override
  Widget build(BuildContext context) {

    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Padding(
      padding: const EdgeInsets.all(10),
      child: SizedBox(
        height: 200,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: actors.length,
          itemBuilder: (context, index) {
            final actor = actors[index];
            return Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Column(
                children: <Widget>[
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ActorDetailScreen(
                            actorName: actor['name']!,
                            actorImage: actor['image']!,
                            actorDescription: actor['description']!,
                          ),
                        ),
                      );
                    },
                    child: Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: SizedBox(
                        width: 100,
                        height: 150,
                        child: Image.asset(
                          actor['image']!,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    actor['name']!,
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
