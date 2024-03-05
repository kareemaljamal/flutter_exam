import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NewsDoctorContainer extends StatelessWidget {
  const NewsDoctorContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20,
      ),
      decoration: BoxDecoration(
        color: Color.fromRGBO(228, 231, 236, 1),
        borderRadius: BorderRadius.circular(20),
      ),
      width: double.infinity,
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Image(
                fit: BoxFit.fill,
                image: AssetImage(
                    'assets/images/news_images/doctor.png')),
          ),
          Expanded(
            flex: 3,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment:
                    CrossAxisAlignment.start,
                children: [
                  Text(
                    'Connect with doctors & get suggestions',
                    style: GoogleFonts.inter(
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Connect now and get expert insights',
                    style: GoogleFonts.inter(
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10),
                    decoration: BoxDecoration(
                      color:
                          Color.fromRGBO(127, 86, 217, 1),
                      borderRadius:
                          BorderRadius.circular(10),
                    ),
                    child: Text(
                      'View Details',
                      style: GoogleFonts.inter(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.w600),
                    ),
                  )
                ]),
          ),
        ],
      ),
    );
  }
}
