import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Confused extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text("EMOTION --> CONFUSED"),
      ),
      body:Center(


        child: Container(child: Image(image: AssetImage('assets/confused.png')),
        ),

      ),

    );
  }
}