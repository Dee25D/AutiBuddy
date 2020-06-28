import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:autibuddyapp/Notification.dart';
import 'package:autibuddyapp/profile.dart';
import 'package:google_fonts/google_fonts.dart';
import 'main.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class Quiz extends StatelessWidget{

  final pages = [Notify(),  MyHomePage() ,Profile(),] ;
  var mypages = 1;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text("Emotions Quiz"),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.deepPurpleAccent,

        child: Text('Lets play some quiz!',
            style: GoogleFonts.cairo(
            textStyle: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold)),
        ),

      ),

      bottomNavigationBar: CurvedNavigationBar(

        index : 1,
        color: Colors.purple,
        backgroundColor: Colors.white,
        buttonBackgroundColor: Colors.purpleAccent,
        height: 50,
        animationDuration: Duration (
            milliseconds: 200
        ),
        animationCurve: Curves.bounceInOut,
        onTap: (index){
          setState(() {
            mypages = index;
          });
        },

        items:<Widget>[
          Icon(Icons.notifications_none,size: 20, color: Colors.black,),
          Icon(Icons.home,size: 20, color: Colors.black),
          Icon(Icons.account_circle,size: 20, color: Colors.black,),
        ],

      ),
    );
  }
  void setState(Null Function() param0) {}
}