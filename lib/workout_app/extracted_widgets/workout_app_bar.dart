import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../home_screen.dart';

class WorkoutAppBar extends StatelessWidget {
  const WorkoutAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15),
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(
              context, HomeScreen.routeName);
        },
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Row(
                children: [
                  Image(
                    image: AssetImage(
                        'assets/images/workout_images/workout_appbar.png'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment:
                          CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hello, Jade',
                          style: GoogleFonts.inter(
                              fontSize: 16,
                              fontWeight: FontWeight.w400),
                        ),
                        Text(
                          'Ready to workout',
                          style: GoogleFonts.inter(
                              fontSize: 18,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.all(16.0),
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
      ),
    );
  }
}
