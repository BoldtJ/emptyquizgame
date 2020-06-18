import 'package:flutter/material.dart';

class TextControl extends StatelessWidget {

Function buttonHandler;
List textDrop;
int textIndex;

TextControl(this.buttonHandler, this.textDrop, this.textIndex);

  @override
  Widget build(BuildContext context) {
    return      Column(
                children: <Widget>[Text(textDrop[textIndex]), 
                          RaisedButton(child: Text('Bicycle Button!'), onPressed: buttonHandler,),
                          Text(textDrop[textIndex]),
                 ],
              );
  }
}