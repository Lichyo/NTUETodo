import 'package:flutter/material.dart';
import 'package:todo/constants.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    AnimationController controller =
        AnimationController(duration: const Duration(seconds: 1), vsync: this);
    Animation animation = CurvedAnimation(parent: controller, curve: standardEasing);
    setState(() {
      print(animation.value);
    });
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: const [
          Text(
            'NTUE Curriculum',
            style: kTitleTextStyle,
          ),
        ],
      ),
    );
  }
}
