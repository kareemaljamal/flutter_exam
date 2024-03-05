import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MoodRow extends StatelessWidget {
  const MoodRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            ChoiceChip(
              onSelected: (isSelected) {},
              showCheckmark: true,
              selectedColor: Colors.green,
              padding: EdgeInsets.all(0),
              shape: CircleBorder(),
              label: CircleAvatar(
                  radius: 30,
                  child: Image(
                      image: AssetImage(
                          'assets/images/love.png'))),
              selected: false,
            ),
            Text(
              'Love',
              style: GoogleFonts.inter(
                  fontSize: 14,
                  fontWeight: FontWeight.w400),
            ),
          ],
        ),
        Column(
          children: [
            ChoiceChip(
              onSelected: (isSelected) {},
              showCheckmark: true,
              selectedColor: Colors.green,
              padding: EdgeInsets.all(0),
              shape: CircleBorder(),
              label: CircleAvatar(
                  radius: 30,
                  child: Image(
                      image: AssetImage(
                          'assets/images/cool.png'))),
              selected: false,
            ),
            Text(
              'Cool',
              style: GoogleFonts.inter(
                  fontSize: 14,
                  fontWeight: FontWeight.w400),
            ),
          ],
        ),
        Column(
          children: [
            ChoiceChip(
              onSelected: (isSelected) {},
              showCheckmark: true,
              selectedColor: Colors.green,
              padding: EdgeInsets.all(0),
              shape: CircleBorder(),
              label: CircleAvatar(
                  radius: 30,
                  child: Image(
                      image: AssetImage(
                          'assets/images/happy.png'))),
              selected: false,
            ),
            Text(
              'Happy',
              style: GoogleFonts.inter(
                  fontSize: 14,
                  fontWeight: FontWeight.w400),
            ),
          ],
        ),
        Column(
          children: [
            ChoiceChip(
              onSelected: (isSelected) {},
              showCheckmark: false,
              selectedColor: Colors.green,
              padding: EdgeInsets.all(0),
              shape: CircleBorder(),
              label: CircleAvatar(
                  radius: 30,
                  child: Image(
                      image: AssetImage(
                          'assets/images/sad.png'))),
              selected: false,
            ),
            Text(
              'Sad',
              style: GoogleFonts.inter(
                  fontSize: 14,
                  fontWeight: FontWeight.w400),
            ),
          ],
        ),
      ],
    );
  }
}
