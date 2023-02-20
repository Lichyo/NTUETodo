import 'package:flutter/material.dart';
import 'routes/home_route/home_route.dart';
import 'routes/profile_route.dart';
import 'routes/calender/calender_screen.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  static List<Widget> widgetOption = [
    HomeRoute(),
    CalendarScreen(),
    Column(
      children: const [
        Text('Chat'),
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
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: const Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.lightBlueAccent.shade400,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.calendar_month),
            label: 'Calendar',
            backgroundColor: Colors.lightBlueAccent.shade400,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.chat),
            label: 'Chat',
            backgroundColor: Colors.lightBlueAccent.shade400,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.person),
            label: 'Profile',
            backgroundColor: Colors.lightBlueAccent.shade400,
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: onItemPressed,
      ),
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent.shade400,
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
        // child: LoginScreen(),
      ),
    );
  }
}
