import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SliderItem extends StatelessWidget {
  SliderItem(
      {super.key,
      required this.img,
      required this.description,
      required this.title,
      required this.color,
      required this.textColor});
  String img;
  String description;
  String title;
  Color color;
  Color textColor;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill, image: AssetImage(img)),
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        Positioned.fill(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  Colors.black87,
                  Colors.transparent,
                ],
              ),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ),
        Positioned.fill(
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              margin: EdgeInsets.only(bottom: 90, left: 25),
              padding: EdgeInsets.symmetric(
                  horizontal: 10, vertical: 4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: color,
                shape: BoxShape.rectangle,
              ),
              child: Text(
                title,
                style: GoogleFonts.inter(
                    color: textColor,
                    fontSize: 12,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
        ),
        Positioned.fill(
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.symmetric(
                  horizontal: 20, vertical: 20),
              child: Text(
                description,
                style: GoogleFonts.inter(
                    color: Color.fromRGBO(252, 252, 253, 1),
                    fontSize: 15,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
