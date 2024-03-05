import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HealthContainerWithIndicator extends StatelessWidget {
  HealthContainerWithIndicator({super.key});
  PageController controller = PageController();
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Color.fromRGBO(236, 253, 243, 1),
            borderRadius: BorderRadius.circular(15),
          ),
          height: height / 5.3,
          width: double.infinity,
          child: Row(
            children: [
              Expanded(
                child: Column(
                    crossAxisAlignment:
                        CrossAxisAlignment.start,
                    mainAxisAlignment:
                        MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Positive Vibes',
                        style: GoogleFonts.inter(
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        'Boost your mood with positive vibes',
                        style: GoogleFonts.inter(
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                      ),
                      Row(
                        children: [
                          Image(
                              image: AssetImage(
                                  'assets/images/play button.png')),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            '10 mins',
                            style: GoogleFonts.inter(
                                fontSize: 14,
                                fontWeight:
                                    FontWeight.w500),
                          ),
                        ],
                      )
                    ]),
              ),
              Image(
                  image: AssetImage(
                      'assets/images/walking_dog.png'))
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: SmoothPageIndicator(
              controller: controller, // PageController
              count: 3,
              // forcing the indicator to use a specific direction
              effect: WormEffect(
                  activeDotColor:
                      Color.fromRGBO(152, 162, 179, 1),
                  dotColor:
                      Color.fromRGBO(217, 217, 217, 1),
                  dotWidth: 7,
                  dotHeight: 7),
            ),
          ),
        ),
      ],
    );
  }
}
