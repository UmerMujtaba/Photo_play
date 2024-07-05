import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../components/star_component.dart';
import '../provider/theme_provider.dart';

class MainAboveTrending extends StatelessWidget {
  const MainAboveTrending({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Column(
      children: <Widget>[
        Stack(
          alignment: Alignment.bottomCenter,
          children: [
            ShaderMask(
              shaderCallback: (bounds) => LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: isDarkMode
                    ? [
                        Colors.black.withOpacity(0.2),
                        Colors.black.withOpacity(0.4),
                      ]
                    : [
                        Colors.white.withOpacity(0),
                        Colors.white.withOpacity(1),
                      ],
              ).createShader(bounds),
              blendMode: BlendMode.srcATop,
              child: SizedBox(
                height: 550,
                child: InkWell(
                  onTap: () {
                    Navigator.pushReplacementNamed(context, '/detail');
                  },
                  child: const Image(
                    image: AssetImage('assets/movies/dora.jpg'),
                    fit: BoxFit.fill,
                    width: double.maxFinite,
                    height: double.maxFinite,
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 5),
        Text(
          '4.0',
          style: TextStyle(
              color: isDarkMode ? Colors.white : Colors.black, fontSize: 34),
        ),
        const StarComponent(),
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(
                'Movie',
                style: TextStyle(
                    color: isDarkMode ? Colors.white : Colors.black,
                    fontSize: 14),
              ),
              Text(
                '|',
                style: TextStyle(
                    color: isDarkMode ? Colors.white : Colors.black,
                    fontSize: 14),
              ),
              Text(
                ' Adventure',
                style: TextStyle(
                    color: isDarkMode ? Colors.white : Colors.black,
                    fontSize: 14),
              ),
              Text(
                '|',
                style: TextStyle(
                    color: isDarkMode ? Colors.white : Colors.black,
                    fontSize: 14),
              ),
              Text(
                ' Comedy',
                style: TextStyle(
                    color: isDarkMode ? Colors.white : Colors.black,
                    fontSize: 14),
              ),
              Text(
                '|',
                style: TextStyle(
                    color: isDarkMode ? Colors.white : Colors.black,
                    fontSize: 14),
              ),
              Text(
                'Family',
                style: TextStyle(
                    color: isDarkMode ? Colors.white : Colors.black,
                    fontSize: 14),
              ),
            ],
          ),
        )
      ],
    );
  }
}
