import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ExcerciseCategories extends StatelessWidget {
  const ExcerciseCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Container(
                margin: EdgeInsets.only(right: 10),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(249, 245, 255, 1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Image(
                          image: AssetImage(
                              'assets/images/relaxation.png')),
                    ),
                    Expanded(
                      child: Text(
                        'Relaxation',
                        style: GoogleFonts.inter(
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(left: 10),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(253, 242, 250, 1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Image(
                          image: AssetImage(
                              'assets/images/meditation.png')),
                    ),
                    Expanded(
                      child: Text(
                        'Meditation',
                        style: GoogleFonts.inter(
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Expanded(
              child: Container(
                margin: EdgeInsets.only(right: 10),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(255, 250, 245, 1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Image(
                          image: AssetImage(
                              'assets/images/breathing.png')),
                    ),
                    Expanded(
                      child: Text(
                        'Breathing',
                        style: GoogleFonts.inter(
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(left: 10),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(240, 249, 255, 1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Image(
                          image: AssetImage(
                              'assets/images/yoga.png')),
                    ),
                    Expanded(
                      child: Text(
                        'Yoga',
                        style: GoogleFonts.inter(
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
