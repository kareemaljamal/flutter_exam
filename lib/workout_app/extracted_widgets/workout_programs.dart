import 'package:exam_flutter/workout_app/model/workout_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WorkoutPrograms extends StatelessWidget {
  WorkoutPrograms({required this.model});
  WorkoutModel model;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Color.fromRGBO(248, 249, 252, 1),
        borderRadius: BorderRadius.circular(15),
      ),
      height: 168,
      width: double.infinity,
      child: Row(
        children: [
          Expanded(
            child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start,
                mainAxisAlignment:
                    MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: 10),
                    decoration: BoxDecoration(
                      border:
                          Border.all(color: Colors.black),
                      borderRadius:
                          BorderRadius.circular(30),
                    ),
                    child: Text(
                      model.days,
                      style: GoogleFonts.inter(
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  Text(
                    model.title,
                    style: GoogleFonts.inter(
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    model.description,
                    style: GoogleFonts.inter(
                        fontSize: 12,
                        fontWeight: FontWeight.w400),
                  ),
                  Row(
                    children: [
                      Image(
                          image: AssetImage(
                              'assets/icons/work_out/ic_clock.png')),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        '30 mins',
                        style: GoogleFonts.inter(
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  )
                ]),
          ),
          Image(image: AssetImage(model.img))
        ],
      ),
    );
  }
}
