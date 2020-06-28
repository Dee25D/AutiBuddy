import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:autibuddyapp/homescreenvideo.dart';

void main() => runApp(VideoEmo());

class VideoEmo extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Youtube Videos',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.red,
      ),
      home: HomeScreen(),
    );
  }
}