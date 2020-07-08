import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class Confused extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: MyConfused(),
      ),
    );
  }
}
class MyConfused extends StatefulWidget {

  @override
  _MyConfusedState createState() => _MyConfusedState();
}

class _MyConfusedState extends State<MyConfused> {
  final FlutterTts flutterTts = FlutterTts();

  @override
  Widget build(BuildContext context) {
    speak() async {

      print(await flutterTts.getLanguages);
      await flutterTts.setLanguage("en-US");
      await flutterTts.setPitch(1);
      print(await flutterTts.getVoices);
      await flutterTts.speak("Confused");
    }
    return Container(
      alignment: Alignment.center,
      child:Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ConPic(),

          RaisedButton(
            child: Text("Press this to say Confused"),
            onPressed: () => speak(),
          ),
        ],
      ),
    );

  }
}

class ConPic extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('assets/confused.png');
    Image image = Image(image: assetImage);
    return Container(child: image);


  }
}
