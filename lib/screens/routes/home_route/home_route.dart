import 'package:flutter/material.dart';
import 'package:todo/components/week_container.dart';
import 'package:todo/constants.dart';
import 'package:todo/models/class_data.dart';

class HomeRoute extends StatelessWidget {
  HomeRoute({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
      children: [
        Column(
          children: [
            WeekContainer(week: Week.mon),
            WeekContainer(week: Week.tues),
            WeekContainer(week: Week.wed),
            WeekContainer(week: Week.thur),
            WeekContainer(week: Week.fri),
          ],
        ),
      ],
    );
  }
}
