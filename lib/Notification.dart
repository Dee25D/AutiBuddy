import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Notify extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text("Notification"),
      ),
      body: Container(

        child: Text('It is lonely here'),

      ),

    );
  }
}