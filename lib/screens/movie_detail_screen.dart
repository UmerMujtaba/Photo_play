import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:photoplay/model/movie.dart';
import 'package:photoplay/screens/watch_now_screen.dart';
import 'package:provider/provider.dart';

import '../components/bottom_bar.dart';
import '../components/button_component.dart';
import '../components/actor_movie_cards.dart';
import '../components/star_component.dart';
import '../cosntants.dart';
import '../provider/theme_provider.dart';
import '../widgets/movie_details_back_button.dart';

class MovieDetailScreen extends StatelessWidget {
  const MovieDetailScreen({
    super.key,
    required this.movie,
    required this.actors,
  });

  final Movie movie;
  final List<Map<String, String>> actors;

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;
    final themeProvider = Provider.of<ThemeProvider>(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: isDarkMode ? Colors.black : Colors.white,
        body: CustomScrollView(
          slivers: [
            SliverAppBar.large(
              leading: BackBtn(),
              backgroundColor: Colors.black,
              expandedHeight: 400,
              pinned: true,
              floating: true,
              flexibleSpace: FlexibleSpaceBar(
                title: Text(
                  movie.title,
                  style: GoogleFonts.belleza(
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                ),
                background: ClipRRect(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(24),
                    bottomRight: Radius.circular(24),
                  ),
                  child: Image.network(
                    '${Constants.imagePath}${movie.backDropPath}',

                    fit: BoxFit.fill,
                    filterQuality: FilterQuality.high,
                    //height: 300,
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Text(
                      'Overview',
                      style: GoogleFonts.openSans(
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                    Text(movie.overview,
                        style: TextStyle(
                          color: isDarkMode ? Colors.grey : Colors.black,
                          fontSize: 14,
                        ),
                        textAlign: TextAlign.justify),
                    const SizedBox(height: 20),
                    SizedBox(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,

                        children: [
                          Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              children: [
                                Text(
                                  'Release Date: ',
                                  style: GoogleFonts.roboto(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  movie.releaseDate,
                                  style: GoogleFonts.roboto(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                               children: [
                                Text(
                                  'Rating: ',
                                  style: GoogleFonts.roboto(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                  ),
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                Text(
                                  '${movie.voteAverage.toStringAsFixed(1)}/10',
                                  style: GoogleFonts.roboto(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Column
// (
// children: <
// Widget>[
// Stack
// (
// alignment: Alignment.topLeft,children: [
// ShaderMask
// (
// shaderCallback: (
// bounds) =>
// LinearGradient
// (
// begin: Alignment.topCenter,end: Alignment.bottomCenter,colors: isDarkMode
// ? [Colors.black.withOpacity(0.2
// )
// ,
// Colors.black.withOpacity(0.9
// )
// ,
// ]
// :
// [
// Colors.white.withOpacity(0
// )
// ,
// Colors.white.withOpacity(1
// )
// ,
// ]
// ,
// )
// .
// createShader
// (
// bounds),
// blendMode: BlendMode.srcATop,child: SizedBox
// (
// height: 300
// ,
// child: InkWell
// (
// // onTap: () {
// //   Navigator.pushNamed(context, '/detail');
// // },
// child: Image.network(movie.backDropPath,fit: BoxFit.fill,width: double
//     .maxFinite,height: 300,
// ),
// ),
// ),
// ),
// Padding
// (
// padding: const EdgeInsets.all(16.0
// )
// ,
// child: Row
// (
// children: <
// Widget>[
// InkWell
// (
// onTap: () {
// Navigator.pop(context);
// },
// child: IconButton
// (
// icon: const Icon(Icons.arrow_back_ios,size: 20
// ,
// )
// ,
// color: Colors.white,onPressed: () {
// Navigator.pop(context);
// },
// )
// ,
// )
// ,
// const SizedBox(width: 10
// )
// ,
// const Text('
// Back',
// style: TextStyle
// (
// color: Colors.white,fontSize: 24,
// ),
// ),
// ],
// ),
// )
// ,
// Positioned
// (
// bottom: 16
// ,
// left: 16
// ,
// child: Column
// (
// crossAxisAlignment: CrossAxisAlignment.start,children: <
// Widget>[
// Text
// (
// movie.title,style: TextStyle
// (
// color: isDarkMode
// ?
// Colors.white: Colors.black,fontSize: 24
// ,
// fontWeight: FontWeight.bold),
// )
// ,
// const SizedBox(height: 8),
// // Row(
// //   mainAxisAlignment: MainAxisAlignment.start,
// //   children: genres
// //       .expand((genre) => [
// //             Text(
// //               genre,
// //               style: TextStyle(
// //                   color: isDarkMode
// //                       ? Colors.white
// //                       : Colors.black,
// //                   fontSize: 14),
// //             ),
// //             const SizedBox(width: 15),
// //             Text(
// //               '|',
// //               style: TextStyle(
// //                   color: isDarkMode
// //                       ? Colors.white
// //                       : Colors.black,
// //                   fontSize: 14),
// //             ),
// //             const SizedBox(width: 15),
// //           ])
// //       .toList()
// //     ..removeLast()
// //     ..removeLast(), // Remove the last '|'
// // ),
// ],
// ),
// ),
// ],
// )
// ,
// const SizedBox(height: 20
// )
// ,
// Padding
// (
// padding: const EdgeInsets.all(8.0
// )
// ,
// child: Column
// (
// children: [
// // Text(
// //   movie.voteAverage as String,
// //   style: TextStyle(
// //       color: isDarkMode ? Colors.white : Colors.black,
// //       fontSize: 34),
// // ),
// const StarComponent()
// ,
// Text
// (
// movie.overview,style: TextStyle
// (
// color: isDarkMode
// ?
// Colors.grey : Colors.black,fontSize: 14
// ,
// )
// ,
// textAlign: TextAlign.start),
// const SizedBox(height: 20
// )
// ,
// CustomButton
// (
// text: '
//
// Watch Now
// '
// ,
// height: 44.0
// ,
// padding: const EdgeInsets.fromLTRB(40
// ,
// 10
// ,
// 40
// ,
// 10
// )
// ,
// onPressed: () {
// // Navigator.push(
// //   context,
// //   MaterialPageRoute(
// //     builder: (context) => WatchNowScreen(
// //       movieWatch: name,
// //       ratingWatch: rate,
// //       descriptionWatch: description,
// //       genresWatch: genres,
// //       backgroundImageURLWatch: bgImgURL,
// //     ),
// //   ),
// // );
// },
// )
// ,
// Row
// (
// children: [
// Text
// ('Cast
// '
// ,
// style: TextStyle
// (
// color: isDarkMode
// ?
// Colors.white: Colors.black,fontSize: 18
// ,
// fontWeight: FontWeight.bold),
// )
// ]
// ,
// )
// ,
// ActorCards
// (
// actors: actors),
// ],
// ),
// ),
// ],
// ),
// )
// ,
// )
// ]
// ,
// )
// ,
// bottomNavigationBar: const bar()
// ,
// )
// ,
// );
// }
// }
