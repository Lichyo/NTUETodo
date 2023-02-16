import 'package:flutter/material.dart';

const kAppBarTitleTextStyle = TextStyle(
  fontWeight: FontWeight.w700,
);

const kTitleTextStyle = TextStyle(
  fontSize: 30,
  fontWeight: FontWeight.w500,
  fontFamily: 'Ubuntu',
);

const kProfileTextStyle = TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0,);

const kLittleTextStyle = TextStyle(
  fontWeight: FontWeight.w500,
  fontSize: 20,
  color: Color(0xff696969),
);

const kTextFieldDecoration = InputDecoration(
  hintText: '',
  hintStyle: TextStyle(
    color: Colors.grey,
  ),
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
);

enum Week { mon, tues, wed, thur, fri }
