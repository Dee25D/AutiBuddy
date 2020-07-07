import 'package:autibuddyapp/playquiz.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class Quiz extends StatefulWidget {

  @override
  _QuizState createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 30),
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            GestureDetector(
              onTap: (){
                Navigator.pushReplacement(context, MaterialPageRoute(
                  builder: (context) => PlayQuiz()
                ));
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 12, horizontal: 54),
                decoration: BoxDecoration(
                  color: Colors.purpleAccent,
                  borderRadius: BorderRadius.circular(24)
                ),
                child: Text("Start Quiz Now", style: TextStyle(
                  color: Colors.white,
                  fontSize: 18
                ),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}