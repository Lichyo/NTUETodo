import 'package:flutter/material.dart';
import 'package:todo/constants.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff737373),
      child: Container(
        padding: const EdgeInsets.only(left: 30.0, right: 30.0),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(30.0),
            topLeft: Radius.circular(30.0),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: kTitleTextStyle.copyWith(fontSize: 50.0),
            ),
            const SizedBox(
              height: 50.0,
            ),
            TextField(
              onChanged: (value) {},
              // textAlign: TextAlign.center,
              decoration: const InputDecoration(
                hintText: 'Enter your task',
                contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(32.0)),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blueAccent, width: 1.0),
                  borderRadius: BorderRadius.all(Radius.circular(32.0)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blueAccent, width: 2.0),
                  borderRadius: BorderRadius.all(Radius.circular(32.0)),
                ),
              ),
            ),
            const SizedBox(height: 10,),
            TextField(
              onChanged: (value) {},
              // textAlign: TextAlign.center,
              decoration: const InputDecoration(
                hintText: 'Enter task\'s time',
                contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(32.0)),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blueAccent, width: 1.0),
                  borderRadius: BorderRadius.all(Radius.circular(32.0)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blueAccent, width: 2.0),
                  borderRadius: BorderRadius.all(Radius.circular(32.0)),
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            TextButton(
              style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(
                  Colors.blue,
                ),
              ),
              onPressed: () {},
              child: const Text(
                'Create',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
