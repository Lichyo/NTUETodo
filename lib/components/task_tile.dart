import 'package:flutter/material.dart';
import 'package:todo/constants.dart';

class TaskTile extends StatelessWidget {
  const TaskTile({
    super.key,
  });
  // String taskName;


  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: const Text(
        'Mission 1',
        style: kTitleTextStyle,
      ),
      subtitle: const Text('time: '),
      trailing: Checkbox(
        value: false,
        onChanged: (bool? value) {},
      ),
    );
  }
}
