import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NewsSearchTextField extends StatelessWidget {
  const NewsSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
          style: TextStyle(color: Colors.white),
          decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.search,
              color: Colors.black,
            ),
            border: OutlineInputBorder(
                borderRadius:
                    BorderRadius.all(Radius.circular(10))),
            hintStyle: TextStyle(color: Colors.white),
            labelText:
                'Articles, Video ,Audio and More ,...',
            labelStyle: GoogleFonts.inter(
                fontSize: 16, fontWeight: FontWeight.w400),
          )),
    );
  }
}
