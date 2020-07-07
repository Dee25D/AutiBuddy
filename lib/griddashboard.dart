import 'package:autibuddyapp/about.dart';
import 'package:autibuddyapp/learning.dart';
import 'package:autibuddyapp/quiz.dart';
import 'package:autibuddyapp/settings.dart';
import 'package:autibuddyapp/todo.dart';
import 'package:autibuddyapp/videoemo.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GridDashboard extends StatelessWidget {
  final Items item1 = new Items(
      title: "About",
      subtitle: "Auti Buddy",
      event: "",
      img: "assets/buddy.png",
      navigateTo : About(),
    );

  final Items item2 = new Items(
    title: "Learning",
    subtitle: "Different emotions",
    event: "6 Items",
    img: "assets/auti.PNG",
    navigateTo: Learning(),
  );

  final Items item3 = new Items(
    title: "Emotions quiz",
    subtitle: "Lets score it",
    event: "",
    img: "assets/buddy.png",
    navigateTo: Quiz(),
  );

  final Items item4 = new Items(
    title: "Watch",
    subtitle: "from youtube",
    event: "",
    img: "assets/buddy.png",
    navigateTo: VideoEmo(),
  );

  final Items item5 = new Items(
    title: "To do",
    subtitle: "Homework",
    event: "Items",
    img: "assets/auti.PNG",
    navigateTo: ToDo(),
  );

  final Items item6 = new Items(
    title: "Settings",
    subtitle: "",
    event: "",
    navigateTo: Settings(),
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
                     Text(
                    data.subtitle,
                    style: GoogleFonts.openSans(
                        textStyle: TextStyle(
                            color: Colors.white38,
                            fontSize: 10,
                            fontWeight: FontWeight.w600)),
                  ),
                     SizedBox(
                    height: 14,
                  ),
                     Text(
                    data.event,
                    style: GoogleFonts.openSans(
                        textStyle: TextStyle(
                            color: Colors.white70,
                            fontSize: 11,
                            fontWeight: FontWeight.w600)),
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
  final String subtitle;
  final String event;
  final   String img;
  final Widget navigateTo;
  Items({this.title, this.subtitle, this.event, this.img, this.navigateTo});
}

