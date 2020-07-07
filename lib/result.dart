import 'package:autibuddyapp/main.dart';
import 'package:autibuddyapp/playquiz.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Result extends StatefulWidget {
  int score, totalQuestion, correct, incorrect, notattempted;

  Result({this.score, this.totalQuestion, this.correct, this.incorrect,
    this.notattempted});

  @override
  _ResultState createState() => _ResultState();
}

  class _ResultState extends State<Result> {

  String greeting = "";
  @override
    void initState() {
    super.initState();


    var percentage = (widget.score/(widget.totalQuestion*20))*100;
    if(percentage >= 90) {
      greeting = "Outstanding";
    }else if(percentage > 80 && percentage < 90) {
      greeting = "Good Work";
    }else if(percentage > 70 && percentage < 80) {
      greeting = "Good effort";
    }else if(percentage <70){
      greeting = "It's okay try again";
    }
  }
 @override
    Widget build(BuildContext context) {
   return Scaffold(
     body: Center(
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         crossAxisAlignment: CrossAxisAlignment.center,
         children: <Widget>[
           Text("$greeting", style: TextStyle(
             color: Colors.black,
             fontSize: 24,
               fontWeight: FontWeight.w500
           ),),
         SizedBox(height: 14,),

         Text("You scored ${widget.score} out of ${widget.totalQuestion * 20}"),
         Text("${widget.correct} Correct , ${widget.incorrect} "
             "Incorrect & ${widget.notattempted} out of ${widget
             .totalQuestion}"),
         SizedBox(height: 16,),

         GestureDetector(
           onTap: () {
             Navigator.pushReplacement(context, MaterialPageRoute(
                 builder: (context) => PlayQuiz()
             ));
           },
           child: Container(
             padding: EdgeInsets.symmetric(vertical: 12,
                 horizontal:  54),

             child: Text("Replay quiz", style: TextStyle(
               color: Colors.white,
               fontSize: 18,
               fontWeight: FontWeight.w500
             ),),
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(24),
               color: Colors.purpleAccent
             ),
           ),
         ),
         SizedBox(height: 20,),
         GestureDetector(
           onTap: () {
             Navigator.pushReplacement(context, MaterialPageRoute(
                 builder: (context) => MyHomePage()
             ));
           },
           child: Container(
             padding: EdgeInsets.symmetric(vertical: 12,
                 horizontal:  54),

             child: Text("Home", style: TextStyle(
               fontSize: 15,
               color: Colors.blue
             ),),
             decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(24),
                 border: Border.all(color: Colors.blue, width: 2)
             ),
           ),
         ),
       ],
     ),
   ),
   );


 }
}