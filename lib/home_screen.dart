import 'package:exam_flutter/workout_app/workout_home.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'health_app/health_home.dart';
import 'news_app/news_home.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = 'home';
  HomeScreen({super.key});
  List<String> pageTitle = [
    HealthApp.routeName,
    WorkoutApp.routeName,
    NewsApp.routeName
  ];

  TextStyle style =
      TextStyle(fontSize: 25, fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Colors.black87,
            Colors.deepPurple,
            Colors.deepPurpleAccent.shade700,
            Colors.deepPurple,
            Colors.black87
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.black38,
          title: Text(
            "Flutter Exam",
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 20.0, vertical: 60),
              child: Text(
                textAlign: TextAlign.center,
                'Navigate To The Selected App',
                style: GoogleFonts.inter(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.all(40),
                child: ListView.separated(
                  itemBuilder: (context, index) {
                    return ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(
                              context, pageTitle[index]);
                        },
                        child: Text(
                          pageTitle[index],
                          style: style,
                        ));
                  },
                  itemCount: pageTitle.length,
                  separatorBuilder:
                      (BuildContext context, int index) {
                    return Divider();
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
