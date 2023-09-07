import 'package:flutter/material.dart';
import 'screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Efficiency App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFFE7626C))
            .copyWith(background: const Color(0xFFE7626C)),
        textTheme: const TextTheme(
          displayLarge: TextStyle(
            color: Color(0xff232b55),
          ),
        ),
        cardColor: const Color(0xfff4eddb),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Pomodors'),
    );
  }
}
