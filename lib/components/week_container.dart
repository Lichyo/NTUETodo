import 'package:flutter/material.dart';

class WeekContainer extends StatelessWidget {
  WeekContainer({
    super.key,
    required this.week,
  });

  String week;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(8),
        margin: const EdgeInsets.all(2),
        height: 50.0,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.grey.shade700,
        ),
        child: Text(
          week,
          style: const TextStyle(fontSize: 25.0),
        ),
      ),
    );
  }
}