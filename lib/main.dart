import 'package:flutter/material.dart';
import 'package:media_editor/screens/home_screen.dart';
import 'package:media_editor/screens/photo_edit_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Video Editor',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          colorScheme: Theme.of(context).colorScheme.copyWith(
                primary: Colors.deepOrangeAccent,
              ),
          appBarTheme: const AppBarTheme(
              iconTheme: IconThemeData(color: Colors.black),
              toolbarHeight: 38,
              elevation: 0,
              backgroundColor: Colors.deepOrangeAccent,
              toolbarTextStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w800)),
        ),
      home: const HomeScreen(),
      routes: {
        HomeScreen.routename:(context) => const HomeScreen(),
      },
    );
  }
}

