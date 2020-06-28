import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Shocked extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text("EMOTION --> SHOCKED"),
      ),
      body:Center(

        child: Container(child: Image(image: AssetImage('assets/shocked.png')),
        ),

      ),

    );
  }
}