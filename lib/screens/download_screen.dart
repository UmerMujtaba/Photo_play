import 'package:flutter/material.dart';

class DownloadScreen extends StatefulWidget {
  const DownloadScreen({Key? key}) : super(key: key);

  @override
  State<DownloadScreen> createState() => _DownloadScreenState();
}

class _DownloadScreenState extends State<DownloadScreen> {
  final List<Map<String, String>> movies = const [
    {
      'image':
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSe1r2CIT0LLnJ0_taiwRMSvv5W6CpUPJpfA&s',
      'name': 'Sacred Games',
      'episode': '3',
      'size': '4.25GB'
    },
    {
      'image': 'assets/movies/12strong.jfif',
      'name': '12 Strong',
      'episode': '',
      'size': '1.02GB'
    },
    {
      'image':
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQk_orl6aP3ajPEgCHf77-D6HXSrd2w_Efhbw&s',
      'name': 'Money Hesit',
      'episode': '5',
      'size': '5.25GB'
    },
    {
      'image': 'assets/movies/antman.jfif',
      'name': 'Antman',
      'episode': '',
      'size': '2.02GB'
    },
    {
      'image': 'assets/movies/fantasy.jfif',
      'name': 'Fantasy Island',
      'episode': '',
      'size': '2.65GB'
    },
    {
      'image':
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQ0e81-UnPdsW_NDC6GBA30iWQPA3sRuYY6w&s',
      'name': 'Sacred Games',
      'episode': '8',
      'size': '7.50GB'
    },
    {
      'image': 'assets/movies/antmanwasp.jfif',
      'name': 'Antman & Wasp',
      'episode': '',
      'size': '1.02GB'
    },
    {
      'image':
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS8dfBBkYWeb0B9tf0V9fMHJ5khHxu20s-BvQ&s',
      'name': 'Narcos',
      'episode': '4',
      'size': '3.42GB'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text(
            'Downloads',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: movies.length,
                  itemBuilder: (context, index) {
                    final movie = movies[index];
                    return Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Row(
                            children: [
                              Card(
                                elevation: 10,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: SizedBox(
                                  width: 130,
                                  height: 100,
                                  child: movie['image']!.startsWith('http')
                                      ? Image.network(
                                    movie['image']!,
                                    fit: BoxFit.fill,
                                  )
                                      : Image.asset(
                                    movie['image']!,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 20),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      movie['name']!,
                                      style: const TextStyle(
                                          color: Colors.white, fontSize: 16),
                                    ),
                                    const SizedBox(height: 2),
                                    Row(
                                      children: [
                                        if (movie['episode']!.isNotEmpty)
                                          Text(
                                            ' ${movie['episode']!} Episodes',
                                            style: const TextStyle(
                                                color: Colors.grey,
                                                fontSize: 12),
                                          ),
                                        if (movie['episode']!.isNotEmpty)
                                          const SizedBox(width: 5),
                                        if (movie['episode']!.isNotEmpty)
                                          const Text('|',
                                              style: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 14)),
                                        if (movie['episode']!.isNotEmpty)
                                          const SizedBox(width: 5),
                                        Text(
                                          movie['size']!,
                                          style: const TextStyle(
                                              color: Colors.grey, fontSize: 14),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        // const Divider(color: Colors.white,height: 1,),
                      ],
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
