import 'package:chips_choice/chips_choice.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NewsChipsChoicesCategories extends StatefulWidget {
  NewsChipsChoicesCategories({super.key});
  static const String routeName = 'chips';

  @override
  State<NewsChipsChoicesCategories> createState() =>
      _ChipsChoicesScreenState();
}

class _ChipsChoicesScreenState
    extends State<NewsChipsChoicesCategories> {
  List<String> tags = [];

  List<String> options = [
    'Discover',
    'News',
    'Most Viewed',
    'Saved',
  ];
  int tag = 0;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      ChipsChoice<int>.single(
        value: tag,
        onChanged: (val) {
          tag = val;
          //   print(tags);
          setState(() {});
        },
        choiceItems: C2Choice.listFrom<int, String>(
          source: options,
          value: (i, v) => i,
          label: (i, v) => v,
          tooltip: (i, v) => v,
        ),
        choiceStyle: C2ChipStyle.filled(
          selectedStyle: C2ChipStyle(
              foregroundStyle: GoogleFonts.inter(
                  fontSize: 16,
                  fontWeight: FontWeight.w500),
              backgroundColor:
                  Color.fromRGBO(214, 187, 251, 1)),
          color: Color.fromRGBO(244, 235, 255, 1),
          borderRadius: const BorderRadius.all(
            Radius.circular(20),
          ),
        ),
      ),
    ]);
  }
}
