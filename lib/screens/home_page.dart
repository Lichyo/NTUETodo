import 'package:flutter/material.dart';
import 'package:todo/constants.dart';

import '../components/table_container.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  void onItemPressed(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: 'Add',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'setting',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: onItemPressed,
      ),
      appBar: AppBar(
        title: const Text(
          'TODO',
          style: kAppBarTitleTextStyle,
        ),
      ),
      body: Column(
        children: [
          Table(
            // border: TableBorder.all(),
            // columnWidths: const <int, TableColumnWidth>{
            //   0: IntrinsicColumnWidth(),
            //   1: FlexColumnWidth(),
            //   2: FixedColumnWidth(64),
            // },
            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
            children: const <TableRow>[
              TableRow(
                children: <Widget>[
                  // TableContainer(title: 'Time'),
                  TableContainer(title: 'Mon'),
                  TableContainer(title: 'Tues'),
                  TableContainer(title: 'Wed'),
                  TableContainer(title: 'Thur'),
                  TableContainer(title: 'Fri'),
                ],
              ),
              // TableRow(),
            ],
          ),
        ],
      ),
    );
  }
}


