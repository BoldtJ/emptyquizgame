import 'package:flutter/material.dart';

class BikePosition  extends StatelessWidget {

List textList;
int textListIndex;
bool isChallenge;

BikePosition(this.textList, this.textListIndex, this.isChallenge);



  @override
  Widget build(BuildContext context) {
    return AnimatedDefaultTextStyle(child: Text(textList[textListIndex]),
                  style: isChallenge
                      ? TextStyle(fontSize: 60,
                      color: Colors.red,
                      // GoogleFonts.getFont('Metal Mania'),
                      )
                      : TextStyle(fontSize: 10,
                      color: Colors.greenAccent),
                      duration: const Duration(seconds: 2),);
  }
}