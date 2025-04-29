import 'package:flutter/material.dart';
import 'screens/home.dart';
import 'screens/search.dart';
import 'screens/favorite.dart';
import 'screens/profile.dart';
import 'models/user.dart'; // Correctly imported

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Cool App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      routes: {
        '/home': (context) => HomePage(),
        '/search': (context) => SearchPage(),
        '/favorite': (context) => FavoritePage(),
        '/profile': (context) {
          final user = ModalRoute.of(context)?.settings.arguments as User?;
          return ProfilePage(user: user!);
        },
      },
    );
  }
}
