import 'package:exam_flutter/news_app/extracted_widgets/chips_choice_news.dart';
import 'package:exam_flutter/news_app/extracted_widgets/news_app_bar.dart';
import 'package:exam_flutter/news_app/extracted_widgets/news_doctor.dart';
import 'package:exam_flutter/news_app/extracted_widgets/news_search_text_fields.dart';
import 'package:exam_flutter/news_app/news_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'slider/carousel_slider.dart';

class NewsApp extends StatelessWidget {
  NewsApp({super.key});

  PageController controller = PageController();
  static const routeName = 'News App';

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      bottomNavigationBar: NavBarNews(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          NewsAppBar(),
          NewsSearchTextField(),
          NewsChipsChoicesCategories(),
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: width / 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 10.0, vertical: 20),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          'Hot Topics ',
                          style: GoogleFonts.inter(
                              fontSize: 18,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      Text(
                        'See all >',
                        style: GoogleFonts.inter(
                            color: Color.fromRGBO(
                                89, 37, 220, 1),
                            fontSize: 14,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
                CarouselSliderWidget(),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 10.0, vertical: 20),
                  child: Text(
                    'Get Tips ',
                    style: GoogleFonts.inter(
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                NewsDoctorContainer(),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 10.0, vertical: 15),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          'Cycle Phases and Period',
                          style: GoogleFonts.inter(
                              fontSize: 18,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      Text(
                        'See all >',
                        style: GoogleFonts.inter(
                            color: Color.fromRGBO(
                                89, 37, 220, 1),
                            fontSize: 14,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
