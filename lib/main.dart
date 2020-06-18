// 1) Create a new Flutter App (in this project) and output an AppBar and some text
// below it
// 2) Add a button which changes the text (to any other text of your choice)
// 3) Split the app into three widgets: App, TextControl & Text

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:flutter_course/TextControl.dart';
import './TextBike.dart';

void main() => runApp(WordPressApp());

class WordPressApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _WordPress();
  }
}

//ALL APP STUFF GOES BELOW
class _WordPress extends State<WordPressApp> {
  var testText = 'Letter Bicycle';
  var challengeOn = true;

  var textIndex = 0;

  final List _rotateText = const [
    'First line of text',
    'this is another line oftezt',
    'thisi s a third line of text',
    'BAZINGA!',
    'this will also cycle',
    'so will this',
    'and will this one',
  ];

  void _challengeAccepted() {
    setState(() {
      print('CHALLENGE ACCEPTED!');
      challengeOn = !challengeOn;
      print(challengeOn);
    });
  }

  void _buttonHandler() {
    setState(() {
      if (textIndex < _rotateText.length - 1) {
        textIndex += 1;
        print('pointing to position');
        print(_rotateText.length - 1);
      } else {
        textIndex = 0;
        print('textIndex reset to 0');
      }
    });

    print('You pressed a button');

    print(textIndex);
    print(_rotateText[textIndex]);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text(testText),
      ),
      // body: Stack(children: [Positioned.fill( child: FlutterLogo(),),]),

      body: Container(
          width: double.infinity,
          margin: EdgeInsets.all(20),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(color: Colors.lightGreen),
          child: Column(
            children: <Widget>[
              Text('row one'),
              Text(' Row two'),
              TextControl(_buttonHandler, _rotateText, textIndex),
              Column(
                children: <Widget>[
                  Text('Scott Pilgrim Button!', style: TextStyle(fontSize: 30, color: Colors.red),),
                  RaisedButton(
                    child: Text('CHALLENGE NOW'),
                    onPressed: _challengeAccepted,
                  )
                ],
              ),
              AnimatedDefaultTextStyle(child: Text('CHALLENGE',  style: GoogleFonts.getFont('Muli'),),
                  style: challengeOn
                      ? TextStyle(fontSize: 60,
                      color: Colors.red,
                      backgroundColor: Colors.brown,
                      )
                      : TextStyle(fontSize: 10,
                      color: Colors.greenAccent
                      ,),
                      duration: const Duration(seconds: 1),),

                     BikePosition(_rotateText, textIndex, challengeOn),
                     BikePosition(_rotateText, textIndex, challengeOn),
            ],
          )),
    ));
  }
}
