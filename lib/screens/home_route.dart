import 'package:flutter/material.dart';
import 'package:todo/components/week_container.dart';

class HomeRoute extends StatelessWidget {
  const HomeRoute({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      child: SafeArea(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                WeekContainer(week: 'Mon'),
                WeekContainer(week: 'Tues'),
                WeekContainer(week: 'Wed'),
                WeekContainer(week: 'Thur'),
                WeekContainer(week: 'Fri'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
