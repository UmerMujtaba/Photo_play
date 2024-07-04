import 'package:flutter/material.dart';

import '../screens/actor_screen.dart';

class ActorCards extends StatelessWidget {
  const ActorCards({Key? key}) : super(key: key);

  final List<Map<String, String>> actors = const [
    {
      'image': 'assets/actor/isabela.jfif',
      'name': 'Isabela Moner',
      'description':
          'Isabela Yolanda Moner, known professionally as Isabela Merced since 2019, is an American actress. She played the lead role in the Nickelodeon television series 100 Things to Do Before High School, and went on to feature in the films.'
    },
    {
      'image': 'assets/actor/micheal.jfif',
      'name': 'Micheal Pena',
      'description':
          'Micheal Pena was born and rasied in Chicago, to Nicolosa, a social worker, who worked at button factory. His parents were originally from Mexico.'
    },
    {
      'image': 'assets/actor/eva.jfif',
      'name': 'Eva Longoria',
      'description':
          'Eva Jacqueline Longoria Bastón is an American actress, producer, director and business woman. After a number of guest roles on several television series, she was recognized for her portrayal of Isabella Braña on the CBS daytime soap opera The Young and the Restless, on which she starred from 2001 to 2003.'
    },
    {
      'image': 'assets/actor/katherine.jfif',
      'name': 'Katherine Langford',
      'description':
          'Katherine Anne Langford is an Australian actress. After appearing in several independent films, she had her breakthrough starring as Hannah Baker in the Netflix television series 13 Reasons Why, which earned her a Golden Globe Award nomination.'
    },
    {
      'image': 'assets/actor/emilia.jfif',
      'name': 'Emilia Clark',
      'description':
          'Emilia Isobel Euphemia Rose Clarke MBE is an English actress. She is best known for her portrayal of Daenerys Targaryen in the HBO fantasy series Game of Thrones, for which she received nominations for four Primetime Emmy Awards.'
    },
  ];

  @override
  Widget build(BuildContext context) {
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
                      elevation: 10,
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
