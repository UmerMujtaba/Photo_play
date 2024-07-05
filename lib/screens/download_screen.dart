import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../model/data.dart';
import '../provider/theme_provider.dart';

class DownloadScreen extends StatefulWidget {
  const DownloadScreen({super.key});

  @override
  State<DownloadScreen> createState() => _DownloadScreenState();
}

class _DownloadScreenState extends State<DownloadScreen> {
  @override
  Widget build(BuildContext context) {
    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;
    final themeProvider = Provider.of<ThemeProvider>(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: isDarkMode ? Colors.black : Colors.white,
        appBar: AppBar(
          backgroundColor: isDarkMode ? Colors.black : Colors.white,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios,
              size: 20,
            ),
            color: isDarkMode ? Colors.white : Colors.black,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text(
            'Downloads',
            style: TextStyle(
                color: isDarkMode ? Colors.white : Colors.black,
                fontWeight: FontWeight.bold),
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
                  itemCount: movies2.length,
                  itemBuilder: (context, index) {
                    final movie = movies2[index];
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
                                      style: TextStyle(
                                          color: isDarkMode
                                              ? Colors.white
                                              : Colors.black,
                                          fontSize: 16),
                                    ),
                                    const SizedBox(height: 2),
                                    Row(
                                      children: [
                                        if (movie['episode']!.isNotEmpty)
                                          Text(
                                            ' ${movie['episode']!} Episodes',
                                            style: TextStyle(
                                                color: isDarkMode
                                                    ? Colors.grey
                                                    : Colors.black,
                                                fontSize: 12),
                                          ),
                                        if (movie['episode']!.isNotEmpty)
                                          const SizedBox(width: 5),
                                        if (movie['episode']!.isNotEmpty)
                                          Text('|',
                                              style: TextStyle(
                                                  color: isDarkMode
                                                      ? Colors.grey
                                                      : Colors.black,
                                                  fontSize: 14)),
                                        if (movie['episode']!.isNotEmpty)
                                          const SizedBox(width: 5),
                                        Text(
                                          movie['size']!,
                                          style: TextStyle(
                                              color: isDarkMode
                                                  ? Colors.grey
                                                  : Colors.black,
                                              fontSize: 14),
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
