import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class Sad extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: MySad(),
      ),
    );
  }
}
class MySad extends StatefulWidget {

  @override
  _MySadState createState() => _MySadState();
}

class _MySadState extends State<MySad> {
  final FlutterTts flutterTts = FlutterTts();

  @override
  Widget build(BuildContext context) {
    speak() async {

      print(await flutterTts.getLanguages);
      await flutterTts.setLanguage("en-US");
      await flutterTts.setPitch(1);
      print(await flutterTts.getVoices);
      await flutterTts.speak("Sad this girl is sad");
    }
    return Container(
      alignment: Alignment.center,
      child:Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          SadPic(),

          RaisedButton(
            child: Text("Press this to say Sad"),
            onPressed: () => speak(),
          ),
        ],
      ),
    );

  }
}

class SadPic extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('assets/crying.jpg');
    Image image = Image(image: assetImage);
    return Container(child: image);


  }
}
