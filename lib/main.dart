import 'package:exam_flutter/health_app/health_home.dart';
import 'package:exam_flutter/home_screen.dart';
import 'package:exam_flutter/workout_app/workout_home.dart';
import 'package:flutter/material.dart';

import 'news_app/news_home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: HomeScreen.routeName,
        routes: {
          HomeScreen.routeName: (context) => HomeScreen(),
          HealthApp.routeName: (context) => HealthApp(),
          WorkoutApp.routeName: (context) => WorkoutApp(),
          NewsApp.routeName: (context) => NewsApp(),
        });
  }
}
