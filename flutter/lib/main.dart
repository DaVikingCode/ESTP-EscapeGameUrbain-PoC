import 'package:escape_game_urbain_ecran/ui/screens/TestScreen.dart';
import 'package:flutter/material.dart';
import 'package:escape_game_urbain_ecran/styles/styles.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Escape game urbain',
      theme: $styles.colors.toThemeData(),
      home: Scaffold(
        body: SingleChildScrollView(
          child: Stack(
            children: <Widget>[TestScreen()],
          ),
        ),
      ),
    );
  }
}
