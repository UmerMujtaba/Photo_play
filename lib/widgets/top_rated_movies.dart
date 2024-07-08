import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../cosntants.dart';
import '../provider/theme_provider.dart';

class TopRatedMovies extends StatelessWidget {
  const TopRatedMovies({Key? key, required this.snapshot}) : super(key: key);
  final AsyncSnapshot snapshot;

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        children: [
          SizedBox(
            height: 200, // Adjust height as needed
            width: double.infinity,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              itemCount: snapshot.data.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.all(8),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      child: Image.network(
                        '${Constants.imagePath}${snapshot.data![index].posterPath}',
                        filterQuality: FilterQuality.high,
                        fit: BoxFit.cover,
                      ),
                      height: 200,
                      width: 120,
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
