import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class Angry extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
         home: Scaffold(
           body: MyAngry(),
         ),
         );
  }
}
 class MyAngry extends StatefulWidget {

  @override
  _MyAngryState createState() => _MyAngryState();
}

class _MyAngryState extends State<MyAngry> {
  final FlutterTts flutterTts = FlutterTts();

  @override
  Widget build(BuildContext context) {
  speak() async {

    print(await flutterTts.getLanguages);
    await flutterTts.setLanguage("en-US");
    await flutterTts.setPitch(1);
    print(await flutterTts.getVoices);
    await flutterTts.speak("Angry");
  }
    return Container(
        alignment: Alignment.center,
          child:Column(
            mainAxisSize: MainAxisSize.min,
             children: <Widget>[
               AngryPic(),

            RaisedButton(
               child: Text("Press this to say Angry"),
                onPressed: () => speak(),
            ),
           ],
          ),
    );

  }
}

class AngryPic extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('assets/angry.jpg');
    Image image = Image(image: assetImage);
    return Container(child: image);


  }
}
