import 'package:flutter/material.dart';
import 'package:todo/constants.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  static List<Widget> widgetOption = [
    Column(
      children: const [
        Text('Home Page'),
      ],
    ),
    Column(
      children: const [
        Text('Calender'),
      ],
    ),
    Column(
      children: const [
        Text('Setting'),
      ],
    ),
  ];

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
            icon: Icon(Icons.calendar_month),
            label: 'Calender',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Setting',
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
      body: Center(
        child: widgetOption.elementAt(_selectedIndex),
      ),
    );
  }
}
