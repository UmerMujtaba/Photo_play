import 'package:flutter/material.dart';
import 'package:photoplay/screens/actor_screen.dart';
import 'package:photoplay/screens/download_screen.dart';
import 'package:photoplay/screens/forgot_password_screen.dart';
import 'package:photoplay/screens/main_screen.dart';
import 'package:photoplay/screens/login_screen.dart';
import 'package:photoplay/screens/movie_detail_screen.dart';
import 'package:photoplay/screens/profile_screen.dart';
import 'package:photoplay/screens/registration_screen.dart';
import 'package:photoplay/screens/search_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/registration',
      routes: {
        '/login': (context) => const LoginScreen(),
        '/registration': (context) => const RegistrationScreen(),
        '/forgot': (context) => const ForgotPasswordScreen(),
        '/main': (context) => const MainScreen(),
        '/search': (context) => const SearchScreen(),
        '/profile': (context) => const ProfileScreen(),
        '/download':(context)=>const DownloadScreen(),
        //'/detail': (context)=> const MovieDetailScreen(name: '', rate: '', description: '', imageURL: '', genres: [],),
        '/actor': (context)=> const ActorDetailScreen(actorName: '', actorImage: '', actorDescription: '',),

      },
      // home: HomeScreen(),

    );
  }
}
