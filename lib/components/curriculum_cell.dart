import 'package:flutter/material.dart';
import 'package:todo/models/curriculum.dart';

class CurriculumCell extends StatelessWidget {
  Curriculum curriculum;
  CurriculumCell({super.key, required this.curriculum});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Colors.blueAccent,
        child: Column(
          children: [
            Text(
              curriculum.className,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
