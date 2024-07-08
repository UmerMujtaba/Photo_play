import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:photoplay/cosntants.dart';
import 'package:photoplay/screens/movie_detail_screen.dart';
import 'package:provider/provider.dart';

import '../model/data.dart';
import '../provider/theme_provider.dart';

class TrendingMovies extends StatelessWidget {
  const TrendingMovies({super.key, required this.snapshot});

  final AsyncSnapshot snapshot;

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;
    final themeProvider = Provider.of<ThemeProvider>(context);

    return SizedBox(
      width: double.infinity,
      child: CarouselSlider.builder(
        itemCount: snapshot.data.length,
        options: CarouselOptions(
          height: 300,
          autoPlay: true,
          enlargeCenterPage: true,
          pageSnapping: true,
          viewportFraction: 0.55,
          autoPlayCurve: Curves.fastOutSlowIn,
          autoPlayAnimationDuration: Duration(seconds: 1),
        ),
        itemBuilder: (context, itemIndex, pageViewIndex) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: SizedBox(
              height: 300,
              width: 200,
              child: Image.network(
                '${Constants.imagePath}${snapshot.data[itemIndex].posterPath}',
                filterQuality: FilterQuality.high,
                fit: BoxFit.cover,
              ),
            ),
          );
        },
      ),
    );
  }
}
//   Padding(
//   padding: const EdgeInsets.all(10),
//   child: SizedBox(
//     height: 200, // Adjust height as needed
//     child: ListView.builder(
//       scrollDirection: Axis.horizontal,
//       itemCount: movies.length,
//       itemBuilder: (context, index) {
//         final movie = movies[index];
//         return Padding(
//           padding: const EdgeInsets.only(right: 10),
//           child: Column(
//             children: <Widget>[
//               InkWell(
//                 onTap: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                       builder: (context) => MovieDetailScreen(
//                         name: movie['name']!,
//                         rate: movie['rate']!,
//                         description: movie['description']!,
//                         imageURL: movie['bgImageURL']!,
//                         bgImgURL: movie['bgImageURL2']!,
//                         genres: List<String>.from(movie['genres']!),
//                         actors: List<Map<String, String>>.from(
//                             movie['actors']!),
//                       ),
//                     ),
//                   );
//                 },
//                 child: Card(
//                   elevation: 10,
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                   child: SizedBox(
//                     width: 100,
//                     height: 150,
//                     child: Image(
//                       image: AssetImage(movie['image']!),
//                       fit: BoxFit.fill,
//                     ),
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 5),
//               Text(
//                 movie['name']!,
//                 style:  TextStyle(color: isDarkMode ? Colors.white : Colors.black,),
//               ),
//             ],
//           ),
//         );
//       },
//     ),
//   ),
// );
