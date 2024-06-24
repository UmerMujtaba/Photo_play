import 'package:flutter/material.dart';


class ActorCards extends StatelessWidget {
  final VoidCallback onPressed;
  const ActorCards({Key? key, required this.onPressed}) : super(key: key);

  final List<Map<String, String>> actors = const [
    {'image': 'assets/actor/isabela.jfif', 'name': 'Isabela Moner'},
    {'image': 'assets/actor/micheal.jfif', 'name': 'Micheal Pena'},
    {'image': 'assets/actor/eva.jfif', 'name': 'Eva Longoria'},
    {'image': 'assets/actor/katherine.jfif', 'name': 'Katherine Langford'},
    {'image': 'assets/actor/emilia.jfif', 'name': 'Emilia Clark'},

  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: SizedBox(
        height: 200, // Adjust height as needed
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
                    onTap: onPressed,
                    child: Card(
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: SizedBox(
                        width: 100,
                        height: 150,
                        child: Image(
                          image: AssetImage(actor['image']!),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    actor['name']!,
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
