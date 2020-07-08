import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class Shocked extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: MyShocked(),
      ),
    );
  }
}
class MyShocked extends StatefulWidget {

  @override
  _MyShockedState createState() => _MyShockedState();
}

class  _MyShockedState extends State<MyShocked> {
  final FlutterTts flutterTts = FlutterTts();

  @override
  Widget build(BuildContext context) {
    speak() async {

      print(await flutterTts.getLanguages);
      await flutterTts.setLanguage("en-US");
      await flutterTts.setPitch(1);
      print(await flutterTts.getVoices);
      await flutterTts.speak("Shocked");
    }
    return Container(
      alignment: Alignment.center,
      child:Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ShockedPic(),

          RaisedButton(
            child: Text("Press this to say Shocked"),
            onPressed: () => speak(),
          ),
        ],
      ),
    );

  }
}

class ShockedPic extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('assets/shocked.png');
    Image image = Image(image: assetImage);
    return Container(child: image);


  }
}
