import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'emogrid.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:autibuddyapp/Notification.dart';
import 'package:autibuddyapp/profile.dart';
import 'main.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class Learning extends StatelessWidget{

  final pages = [Notify(),  MyHomePage() ,Profile(),] ;
  var mypages = 1;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text("Learn Emotions"),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.deepPurpleAccent,

        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

           Padding(
              padding: EdgeInsets.only(left: 16, right: 16),

               child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                   Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                       Text(
                    "Lets begin!",
                         style: GoogleFonts.cairo(
                             textStyle: TextStyle(
                                 color: Colors.white,
                                 fontSize: 24,
                                 fontWeight: FontWeight.bold)),

                      ),
                      SizedBox(
                       height: 4,
                  ),
                ],
              ),
            ],
          ),
        ),
                 SizedBox(
                   height: 40,
                    ),

                  EmoGrid()

          ],
      ),
    ),

      bottomNavigationBar: CurvedNavigationBar(

        index : 1,
        color: Colors.purple,
        backgroundColor: Colors.white,
        buttonBackgroundColor: Colors.grey,
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
          Icon(Icons.notifications_none,size: 20, color: Colors.black),
          Icon(Icons.home,size: 20, color: Colors.black),
          Icon(Icons.account_circle,size: 20, color: Colors.black,),
        ],

      ),

    );
  }
  void setState(Null Function() param0) {}
}