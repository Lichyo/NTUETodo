import 'package:flutter/material.dart';
import 'package:todo/constants.dart';

class ProfileRoute extends StatelessWidget {
  const ProfileRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          GestureDetector(
            onTap: (){},
            child: CircleAvatar(
              radius: 100.0,
              backgroundColor: Colors.grey.shade400,
              child: const Icon(Icons.add, size: 80.0, color: Colors.white,),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50.0, top: 40.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text('Name : Lichyo', style: kProfileTextStyle),
                Text('Student ID : 111016041', style: kProfileTextStyle,),
                Text('Class : 資二甲', style: kProfileTextStyle,),
              ],
            ),
          ),


        ],
      ),
    );
  }
}
