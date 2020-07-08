import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class Excited extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: MyExcited(),
      ),
    );
  }
}
class MyExcited extends StatefulWidget {

  @override
  _MyExcitedState createState() => _MyExcitedState();
}

class _MyExcitedState extends State<MyExcited> {
  final FlutterTts flutterTts = FlutterTts();

  @override
  Widget build(BuildContext context) {
    speak() async {

      print(await flutterTts.getLanguages);
      await flutterTts.setLanguage("en-US");
      await flutterTts.setPitch(1);
      print(await flutterTts.getVoices);
      await flutterTts.speak("Excited");
    }
    return Container(
      alignment: Alignment.center,
      child:Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ExcitedPic(),

          RaisedButton(
            child: Text("Press this to say Excited"),
            onPressed: () => speak(),
          ),
        ],
      ),
    );

  }
}

class ExcitedPic extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('assets/excited.jpg');
    Image image = Image(image: assetImage);
    return Container(child: image);


  }
}
