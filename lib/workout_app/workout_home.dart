import 'package:exam_flutter/workout_app/extracted_widgets/health_measures_container.dart';
import 'package:exam_flutter/workout_app/extracted_widgets/workout_programs.dart';
import 'package:exam_flutter/workout_app/model/workout_model.dart';
import 'package:exam_flutter/workout_app/workout_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'extracted_widgets/workout_app_bar.dart';

class WorkoutApp extends StatelessWidget {
  WorkoutApp({super.key});

  List<WorkoutModel> model = [
    WorkoutModel(
        img:
            'assets/images/workout_images/workout_image1.png',
        days: '7 Days',
        description: 'Improve mental focus',
        title: 'Morning Yoga'),
    WorkoutModel(
        img:
            'assets/images/workout_images/workout_second.png',
        days: '3 Days',
        description: 'Improve posture and stability',
        title: 'Plank Exercise'),
    WorkoutModel(
        img:
            'assets/images/workout_images/workout_image1.png',
        days: '7 Days',
        description: 'Improve mental focus',
        title: 'Morning Yoga'),
    WorkoutModel(
        img:
            'assets/images/workout_images/workout_second.png',
        days: '3 Days',
        description: 'Improve posture and stability',
        title: 'Plank Exercise'),
  ];
  PageController controller = PageController();
  static const routeName = 'Workout App';

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 4,
      child: Scaffold(
        bottomNavigationBar: NavBarWorkOut(),
        body: Container(
          margin:
              EdgeInsets.only(right: 10, left: 10, top: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              WorkoutAppBar(),
              HealthMeasures(),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 10),
                child: Text(
                  'Workout Programs ',
                  style: GoogleFonts.inter(
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                ),
              ),
              TabBar(
                tabs: [
                  Text('All type'),
                  Text('Full body'),
                  Text('Upper'),
                  Text('Lower')
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    ListView.builder(
                      itemCount: model.length,
                      itemBuilder: (context, index) {
                        return WorkoutPrograms(
                            model: model[index]);
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
