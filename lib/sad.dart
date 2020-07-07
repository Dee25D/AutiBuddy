import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Sad extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text("EMOTION --> SAD"),
      ),
      body: Center(

        child: Container(child: Image(image: AssetImage('assets/crying.jpg')),
        ),

      ),

    );
  }
}