import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../components/bottom_bar.dart';
import '../components/button_component.dart';
import '../components/star_component.dart';
import '../provider/theme_provider.dart';

class WatchNowScreen extends StatelessWidget {
  final String movieWatch;
  final String ratingWatch;
  final String descriptionWatch;
  final List<String> genresWatch;
  final String backgroundImageURLWatch;

  const WatchNowScreen({
    super.key,
    required this.movieWatch,
    required this.ratingWatch,
    required this.descriptionWatch,
    required this.genresWatch,
    required this.backgroundImageURLWatch,
  });
  final List<Map<String, dynamic>> episodes = const [
    {
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSe1r2CIT0LLnJ0_taiwRMSvv5W6CpUPJpfA&s',
      'name': '1. The Kingpin Strategy',
      'duration': '54 min',
      'icon1': Icons.play_circle_fill,
      'icon2': Icons.file_download_outlined,
      'downloadName': 'Download'
    },
    {
      'image': 'assets/movies/12strong.jfif',
      'name': '2. Loss or Win',
      'duration': '54 min',
      'icon1': Icons.play_circle_fill,
      'icon2': Icons.file_download_outlined,
      'downloadName': 'Download'
    },
    {
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQk_orl6aP3ajPEgCHf77-D6HXSrd2w_Efhbw&s',
      'name': '3. Game Changer',
      'duration': '54 min',
      'icon1': Icons.play_circle_fill,
      'icon2': Icons.file_download_outlined,
      'downloadName': 'Download'
    },
    {
      'image': 'assets/movies/antman.jfif',
      'name': '4. Travellers',
      'duration': '54 min',
      'icon1': Icons.play_circle_fill,
      'icon2': Icons.file_download_outlined,
      'downloadName': 'Download'
    },
    {
      'image': 'assets/movies/fantasy.jfif',
      'name': '5. Lost and Found',
      'duration': '120 min',
      'icon1': Icons.play_circle_fill,
      'icon2': Icons.file_download_outlined,
      'downloadName': 'Download'
    },
  ];

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;
    final themeProvider = Provider.of<ThemeProvider>(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: isDarkMode ? Colors.black : Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Stack(
                alignment: Alignment.topLeft,
                children: [
                  ShaderMask(
                    shaderCallback: (bounds) => LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: isDarkMode
                          ? [
                              Colors.black.withOpacity(0.2),
                              Colors.black.withOpacity(0.9),
                            ]
                          : [
                              Colors.white.withOpacity(0),
                              Colors.white.withOpacity(1),
                            ],
                    ).createShader(bounds),
                    blendMode: BlendMode.srcATop,
                    child: SizedBox(
                      height: 300,
                      width: double.maxFinite,
                      child: InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/detail');
                        },
                        child: Image.network(
                          backgroundImageURLWatch,
                          fit: BoxFit.fill,
                          width: double.maxFinite,
                          height: 300,
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
                            size: 20,
                          ),
                        ),
                        const SizedBox(width: 10),
                        const Text(
                          'Back',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 16,
                    left: 16,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          movieWatch,
                          style: TextStyle(
                              color: isDarkMode ? Colors.white : Colors.black,
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 8),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: genresWatch.expand((genre) => [
                                Text(
                                  genre,
                                  style: TextStyle(
                                      color: isDarkMode
                                          ? Colors.white
                                          : Colors.black,
                                      fontSize: 14),
                                ),
                                const SizedBox(width: 15),
                                Text(
                                  '|',
                                  style: TextStyle(
                                      color: isDarkMode
                                          ? Colors.white
                                          : Colors.black,
                                      fontSize: 14),
                                ),
                                const SizedBox(width: 15),
                              ]).toList()
                            ..removeLast()
                            ..removeLast(), // Remove the last '|'
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 110,
                    left: 140,
                    child: Icon(
                      Icons.play_circle,
                      size: 65,
                      color: isDarkMode ? Colors.grey : Colors.white70,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text(
                      ratingWatch,
                      style: TextStyle(
                          color: isDarkMode ? Colors.white : Colors.black,
                          fontSize: 34),
                    ),
                    const StarComponent(),
                    Text(descriptionWatch,
                        style: TextStyle(
                          color: isDarkMode ? Colors.grey : Colors.black,
                          fontSize: 14,
                        ),
                        textAlign: TextAlign.start),
                    const SizedBox(height: 20),
                    CustomButton(
                      text: 'Watch Now',
                      height: 44.0,
                      padding: const EdgeInsets.fromLTRB(40, 10, 40, 10),
                      onPressed: () {},
                    ),
                    const Row(
                      children: [
                        Text(
                          'Episodes',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: episodes.length,
                      itemBuilder: (context, index) {
                        final episode = episodes[index];
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Row(
                            children: [
                              Stack(
                                children: [
                                  Card(
                                    elevation: 10,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: SizedBox(
                                      width: 140,
                                      height: 90,
                                      child:
                                          episode['image']!.startsWith('http')
                                              ? Image.network(
                                                  episode['image']!,
                                                  fit: BoxFit.fill,
                                                )
                                              : Image.asset(
                                                  episode['image']!,
                                                  fit: BoxFit.fill,
                                                ),
                                    ),
                                  ),
                                  const Positioned(
                                      top: 35,
                                      left: 55,
                                      child: Icon(
                                        Icons.play_circle,
                                        size: 35,
                                        color: Colors.grey,
                                      )),
                                ],
                              ),
                              const SizedBox(width: 20),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      episode['name']!,
                                      style: TextStyle(
                                          color: isDarkMode
                                              ? Colors.white
                                              : Colors.black,
                                          fontSize: 17),
                                    ),
                                    const SizedBox(height: 2),
                                    Row(
                                      children: [
                                        if (episode['duration']!.isNotEmpty)
                                          Text(
                                            ' ${episode['duration']!}',
                                            style: TextStyle(
                                                color: isDarkMode
                                                    ? Colors.grey
                                                    : Colors.black,
                                                fontSize: 14),
                                          ),
                                        if (episode['duration']!.isNotEmpty)
                                          const SizedBox(width: 5),
                                        if (episode['duration']!.isNotEmpty)
                                          if (episode['duration']!.isNotEmpty)
                                            const SizedBox(width: 5),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          episode['icon2']!,
                                          color: Colors.orange,
                                        ),
                                        const SizedBox(width: 5),
                                        Text(
                                          episode['downloadName'],
                                          style: const TextStyle(
                                              color: Colors.orange,
                                              fontSize: 14),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: const bar(),
      ),
    );
  }
}
