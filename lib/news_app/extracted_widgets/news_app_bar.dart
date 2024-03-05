import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../home_screen.dart';

class NewsAppBar extends StatelessWidget {
  const NewsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;

    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, HomeScreen.routeName);
      },
      child: Container(
        margin: EdgeInsets.only(top: height / 25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image(
              image: AssetImage(
                  'assets/images/news_images/news_appbar.png'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment:
                    CrossAxisAlignment.start,
                children: [
                  Text(
                    'Alice care',
                    style: GoogleFonts.milonga(
                        fontSize: 24,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
