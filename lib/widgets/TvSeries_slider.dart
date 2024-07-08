import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../cosntants.dart';
import '../provider/theme_provider.dart';
import '../screens/TvSeriesDetailScreen.dart';
import '../screens/movie_detail_screen.dart';

class TopAndTrendingTvSeries extends StatelessWidget {
  const TopAndTrendingTvSeries({super.key, required this.snapshot});
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
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => TvSeriesDetailScreen(
                          series: snapshot.data[index],
                        ),
                      ),
                    );
                  },
                  child: Padding(
                    padding: EdgeInsets.all(8),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        height: 200,
                        width: 120,
                        child: Image.network(
                          '${Constants.imagePath2}${snapshot.data![index].backDropPath}',
                          filterQuality: FilterQuality.high,
                          fit: BoxFit.cover,

                        ),
                      ),
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
