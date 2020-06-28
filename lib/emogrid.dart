import 'package:autibuddyapp/sad.dart';
import 'package:autibuddyapp/excited.dart';
import 'package:autibuddyapp/angry.dart';
import 'package:autibuddyapp/shocked.dart';
import 'package:autibuddyapp/happy.dart';
import 'package:autibuddyapp/confused.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EmoGrid extends StatelessWidget {
  final Items item1 = new Items(
    title: "SAD",
    img: "assets/Crying-girl.jpg",
    navigateTo : Sad(),
  );

  final Items item2 = new Items(
    title: "EXCITED",
    img: "assets/excited.jpg",
    navigateTo: Excited(),
  );

  final Items item3 = new Items(
    title: "ANGRY",
    img: "assets/angry.jpg",
    navigateTo: Angry(),
  );

  final Items item4 = new Items(
    title: "HAPPY",
    img: "assets/happy.png",
    navigateTo: Happy(),
  );

  final Items item5 = new Items(
    title: "CONFUSED",
    img: "assets/confused.png",
    navigateTo: Confused(),
  );

  final Items item6 = new Items(
    title: "SHOCKED",
    img: "assets/shocked.png",
    navigateTo: Shocked(),
  );

  @override
  Widget build(BuildContext context) {
    List<Items> myList = [item1, item2, item3, item4, item5, item6];
    var color = 0xff453658;
    return Flexible(

      child: GridView.count(
          childAspectRatio: 1.0,
          padding: EdgeInsets.only(left: 16, right: 16),
          crossAxisCount: 2,
          crossAxisSpacing: 18,
          mainAxisSpacing: 18,
          children: myList.map((data) {
            return GridTile(
              child: InkResponse(
                child: Container(
                  decoration: BoxDecoration(
                      color: Color(color), borderRadius: BorderRadius.circular(20)),

                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset(
                        data.img,
                        width: 60,
                      ),
                      SizedBox(
                        height: 14,
                      ),
                      Text(
                        data.title,
                        style: GoogleFonts.openSans(
                            textStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w600)),
                      ),
                      SizedBox(
                        height: 8,
                      ),

                    ],
                  ),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => data.navigateTo));
                },
              ),
            );
          }).toList()),
    );
  }
}

class Items {
  final String title;
  final   String img;
  final Widget navigateTo;
  Items({this.title, this.img, this.navigateTo});
}
