import 'package:autibuddyapp/Notification.dart';
import 'package:autibuddyapp/profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'griddashboard.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>{
  final pages = [Notify(),  MyHomePage() ,Profile(),] ;
  var mypages = 1;


  @override
  Widget build(BuildContext context) {

    String greeting() {
    var hour = DateTime.now().hour;

    if (hour < 12) {
      return 'Good Morning Buddy';
    } if (hour < 15) {
      return 'Good Aftenoon Buddy';
    }  if (hour < 19) {
      return 'Good Evening Buddy';
    }
      return
        'Good Night Buddy, time to get some sleep';
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text("Auti Buddy", style: TextStyle(
            color: Colors.black
        ),),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        //color: Colors.white70,

        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/AUTI BUDDY 3-02.png"),fit: BoxFit.fill),
        ),



        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Good Morning Buddy',
              semanticsLabel: greeting(),
              style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.black,
              ),
            ),


            SizedBox(
              height: 60,
            ),


            Padding(
              padding: EdgeInsets.only(left: 16, right: 16),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Welcome!",
                        style: GoogleFonts.cairo(
                            textStyle: TextStyle(
                                color: Colors.black54,
                                fontSize: 26,
                                fontWeight: FontWeight.bold)),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        "Home",
                        style: GoogleFonts.openSans(
                            textStyle: TextStyle(
                                color: Color(0xffa29aac),
                                fontSize: 16,
                                fontWeight: FontWeight.w600)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),

            GridDashboard()

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
}
