import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class Happy extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: MyHappy(),
      ),
    );
  }
}
class MyHappy extends StatefulWidget {

  @override
  _MyHappyState createState() => _MyHappyState();
}

class _MyHappyState extends State<MyHappy> {
  final FlutterTts flutterTts = FlutterTts();

  @override
  Widget build(BuildContext context) {
    speak() async {

      print(await flutterTts.getLanguages);
      await flutterTts.setLanguage("en-US");
      await flutterTts.setPitch(1);
      print(await flutterTts.getVoices);
      await flutterTts.speak("Happy");
    }
    return Container(
      alignment: Alignment.center,
      child:Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          HappyPic(),

          RaisedButton(
            child: Text("Press this to say Happy"),
            onPressed: () => speak(),
          ),
        ],
      ),
    );

  }
}

class HappyPic extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('assets/happy.png');
    Image image = Image(image: assetImage);
    return Container(child: image);


  }
}
