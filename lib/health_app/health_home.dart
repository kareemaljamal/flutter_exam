import 'package:badges/badges.dart' as badges;
import 'package:exam_flutter/health_app/extracted_widgets/excercise_categories.dart';
import 'package:exam_flutter/health_app/extracted_widgets/health_container_with_indicator.dart';
import 'package:exam_flutter/health_app/health_nav_bar.dart';
import 'package:exam_flutter/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'extracted_widgets/mood_row.dart';

class HealthApp extends StatelessWidget {
  HealthApp({super.key});

  static const routeName = 'Health App';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavBar(),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: InkWell(
          onTap: () {
            Navigator.pushNamed(
                context, HomeScreen.routeName);
          },
          child: Image(
            image: AssetImage('assets/images/logo_d_1.png'),
          ),
        ),
        actions: [
          InkWell(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 16.0),
              child: badges.Badge(
                badgeStyle: badges.BadgeStyle(
                  shape: badges.BadgeShape.circle,
                  borderRadius: BorderRadius.circular(5),
                ),
                badgeContent: Text(""),
                position:
                    badges.BadgePosition.topEnd(end: 2),
                child: Icon(
                  Icons.notifications_none,
                  size: 30,
                ),
              ),
            ),
          )
        ],
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 15),
        child: Container(
          margin: EdgeInsets.all(15),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment:
                      MainAxisAlignment.start,
                  children: [
                    Text(
                      'Hello,',
                      style: GoogleFonts.inter(
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      'Sara Rose',
                      style: GoogleFonts.inter(
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                Text(
                  'How are you doing today',
                  style: GoogleFonts.inter(
                      fontSize: 20,
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: 20,
                ),
                MoodRow(),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 30, horizontal: 10),
                  child: Row(
                    children: [
                      Expanded(
                          child: Text(
                        'Feature',
                        style: GoogleFonts.inter(
                            fontSize: 18,
                            fontWeight: FontWeight.w600),
                      )),
                      Text(
                        'See more >',
                        style: GoogleFonts.inter(
                            color: Color(0xFF027A48),
                            fontSize: 14,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
                HealthContainerWithIndicator(),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment:
                        MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Excercise',
                        style: GoogleFonts.inter(
                            fontSize: 18,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        'See more >',
                        style: GoogleFonts.inter(
                            color: Color(0xFF027A48),
                            fontSize: 14,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
                ExcerciseCategories(),
              ]),
        ),
      ),
    );
  }
}
