import 'package:flutter/material.dart';
import 'package:todo/constants.dart';

class TableContainer extends StatelessWidget {
  const TableContainer({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 50.0,
      child: Text(
        title,
        style: kTableContainerTextStyle,
      ),
    );
  }
}
