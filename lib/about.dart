import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:autibuddyapp/Notification.dart';
import 'package:autibuddyapp/profile.dart';
import 'package:google_fonts/google_fonts.dart';
import 'main.dart';

// ignore: must_be_immutable
class About extends StatelessWidget{


  final pages = [Notify(),  MyHomePage() ,Profile(),] ;
  var mypages = 1;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text("About"),
      ),
      body: Container(
         height: MediaQuery.of(context).size.height,
         width: MediaQuery.of(context).size.width,
      //color: Colors.white70,

          decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/buddy.png"),fit: BoxFit.fill),
      ),

        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
          Text
            ("An application to develop your social skills and enhance your skills determine your emotions",
                     style: GoogleFonts.cairo(
                    textStyle: TextStyle(
                     color: Colors.black54,
                     fontSize: 20,
                  fontWeight: FontWeight.bold)),
          ),
        ],
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