import 'package:flutter/material.dart';
import 'package:todo/models/curriculum.dart';
import 'package:todo/screens/routes/home_route/todo_screen.dart';

class ClassContainer extends StatelessWidget {
  ClassContainer({
    super.key,
    required this.curriculum,
  });
  Curriculum curriculum;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        curriculum.className,
        style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 30.0),
      ),
      subtitle: Text(
        curriculum.time,
        style: TextStyle(color: Colors.grey.shade800),
      ),
      isThreeLine: true,
      trailing: GestureDetector(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => TODO(curriculum: curriculum,),
            ),
          );
        },
        child: const Icon(
          Icons.arrow_forward,
          color: Colors.black,
          size: 35.0,
        ),
      ),
    );
  }
}
