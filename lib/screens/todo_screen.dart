import 'package:flutter/material.dart';
import 'package:todo/constants.dart';
import 'package:todo/models/curriculum.dart';
import 'package:todo/screens/add_task_screen.dart';
import 'package:todo/components/task_tile.dart';

class TODO extends StatelessWidget {
  TODO({super.key, required this.curriculum});
  Curriculum curriculum;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(
          Icons.add,
          size: 30.0,
        ),
        onPressed: () {
          showModalBottomSheet(
              context: context, builder: (context) => const AddTaskScreen());
        },
      ),
      appBar: AppBar(
        title: const Text(
          'NTUE Curriculum',
          style: kAppBarTitleTextStyle,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 15.0),
                child: Text(
                  'Subject：${curriculum.className}',
                  style: kTitleTextStyle,
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  'Time：${curriculum.time}',
                  style: kLittleTextStyle,
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  'Teacher：${curriculum.teacher}',
                  style: kLittleTextStyle,
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  'Location：${curriculum.location}',
                  style: kLittleTextStyle,
                ),
              ),
              const SizedBox(
                height: 80.0,
              ),
            ],
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 40.0),
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: ListView(
                children: const [
                  TaskTile(),
                  TaskTile(),
                  TaskTile(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}


