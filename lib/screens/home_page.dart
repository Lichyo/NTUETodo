import 'package:flutter/material.dart';
import 'package:todo/constants.dart';
import 'package:todo/screens/login_screen.dart';
import 'home_route.dart';
import 'profile_route.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  static List<Widget> widgetOption = [
    HomeRoute(),
    Column(
      children: const [
        Text('Calender'),
      ],
    ),
    const ProfileRoute(),
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
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: onItemPressed,
      ),
      appBar: AppBar(
        title: const Text(
          'NTUE Curriculum',
          // style: kAppBarTitleTextStyle,
          style: TextStyle(
            fontFamily: 'Ubuntu',
          ),
        ),
      ),
      body: Center(
        child: widgetOption.elementAt(_selectedIndex),
      ),
    );
  }
}
