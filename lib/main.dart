import 'package:flutter/material.dart';

void main() {
  runApp(
    Contact()
  );
}

extension ColorExtension on String {
  toColor() {
    var hexColor = this.replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    if (hexColor.length == 8) {
      return Color(int.parse("0x$hexColor"));
    }
  }
}

class Contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        backgroundColor: '#DDF1EF'.toColor(),
        body: Column(
          children: <Widget>[
            SizedBox(height: 60,),
            Center(child: Image.asset('images/Logo.png', height: 150,)),
            SizedBox(height: 10,),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 150,
                    width: 175,
                    child: Column(
                      children: [
                        Image.asset('images/Report_History.png', height: 150,)
                      ],
                    )
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      height: 150,
                      width: 150,
                      child: Column(
                        children: [
                          Image.asset('images/MedBot.png', height: 150,)
                        ],
                      )
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 200,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      height: 150,
                      width: 150,
                      
                      child: Column(
                        children: [
                          Image.asset('images/Previous_History.png', height: 150,)
                        ],
                      )
                  ),
                ),
              ],
            ),
          ],
        )
      ),
    );
  }
}

